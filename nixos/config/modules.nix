{ pkgs, ... }: {
  imports = [
    ./users.nix # Пользователи
    

    #NOTE: необязательно
    ./logitech.nix
    ./nvidia.nix
    ./disks.nix # Автомаунт дисков основного пк
    # ./cisco.nix
  ];
}
