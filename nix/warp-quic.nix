{
  "0.0.0" = {
    sha256 = "579b52242d195b78b7ac596042ad55fbda05e3b07578c10b83be2874b5ce8907";
    revisions = {
      r0 = {
        nix = import ../hackage/warp-quic-0.0.0-r0-b994792222f1e1ff5edf320076bf0a7bf838d98956a18569eee993434fa8a826.nix;
        revNum = 0;
        sha256 = "b994792222f1e1ff5edf320076bf0a7bf838d98956a18569eee993434fa8a826";
      };
      r1 = {
        nix = import ../hackage/warp-quic-0.0.0-r1-ddebc3ae9e5b0524e3cd3938227da5e5c82a891db9f809a164c1d467b85a6c84.nix;
        revNum = 1;
        sha256 = "ddebc3ae9e5b0524e3cd3938227da5e5c82a891db9f809a164c1d467b85a6c84";
      };
      default = "r1";
    };
  };
}