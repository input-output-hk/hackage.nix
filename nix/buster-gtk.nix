{
  "1.0" = {
    sha256 = "4c5ae93e38fe411d2bc6f6f1a6b480ec28006245910047bd4394c6deb7eb38a9";
    revisions = {
      r0 = {
        nix = import ../hackage/buster-gtk-1.0-r0-0327276d9474b68efb47fa57c378cf0a7316f2fdda7190d08b421e5d74d7f41b.nix;
        revNum = 0;
        sha256 = "0327276d9474b68efb47fa57c378cf0a7316f2fdda7190d08b421e5d74d7f41b";
      };
      default = "r0";
    };
  };
  "2.0" = {
    sha256 = "a13dd06f6ecd1265e319cb87ae4048176805ed8d7103f90f6c05b3d373e355aa";
    revisions = {
      r0 = {
        nix = import ../hackage/buster-gtk-2.0-r0-e1affc62cb401d60941772321737c6ee8da98421aae1e8350868817e60a0320e.nix;
        revNum = 0;
        sha256 = "e1affc62cb401d60941772321737c6ee8da98421aae1e8350868817e60a0320e";
      };
      default = "r0";
    };
  };
}