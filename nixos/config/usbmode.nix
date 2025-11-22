{ config, pkgs, ... }:

{
  # Включаем usb_modeswitch
  hardware.usb-modeswitch.enable = true;

  # Добавляем правило для твоего адаптера
  hardware.usb-modeswitch.customConfigs."0bda:1a2b" = {
    # Эта строка эмулирует "eject" CD-ROM — именно то, что нужно
    # В терминах usb_modeswitch: MessageEndpoint не обязателен, если используем "Eject"
    # Но NixOS ожидает messageContent, поэтому зададим заглушку + включим eject
    targetVendor = "0x0bda";
    targetProduct = "0x1a2b";
    # Команда не обязательна — но для совместимости укажем стандартную
    messageContent = "55534243123456780000000000000611060000000000000000000000000000";
    # Главное — включить eject. В NixOS это делается через дополнительные правила udev + скрипт,
    # но проще и надёжнее — использовать `usb_modeswitch -K`
  };

  # Чтобы `usb_modeswitch -K` запускался автоматически при подключении,
  # добавим udev-правило вручную
  services.udev.extraRules = ''
    # Realtek RTL8188GU: переключить из CD-ROM mode
    ACTION=="add", SUBSYSTEM=="usb", ATTR{idVendor}=="0bda", ATTR{idProduct}=="1a2b", \
    RUN+="${pkgs.usb-modeswitch}/bin/usb_modeswitch -v 0bda -p 1a2b -K"
  '';
}
