{ pkgs, ... }:
{
  environment.variables = {
    SSL_CERT_FILE = "/etc/ssl/certs/ca-certificates.crt";
    SSL_CERT_DIR = "/etc/ssl/certs";
  };
  programs.amnezia-vpn.enable = true;
}
