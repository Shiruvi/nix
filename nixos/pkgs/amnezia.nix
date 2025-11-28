{
  environment.systemPackages = [ pkgs.cacert ];
  environment.variables = {
    SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
  };
  programs.amnezia-vpn.enable = true;
}
