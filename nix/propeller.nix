{
  "0.1.0.0" = {
    sha256 = "fd08c01986cd7a067ae96ade5a10185006be65e269633777dc86b6b26b906103";
    revisions = {
      r0 = {
        nix = import ../hackage/propeller-0.1.0.0-r0-7eaa7ec832028a314012c8a881c4697546dbf5d77de6bf8575e78d5f76a20c1e.nix;
        revNum = 0;
        sha256 = "7eaa7ec832028a314012c8a881c4697546dbf5d77de6bf8575e78d5f76a20c1e";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "ba7779b5777c94f18997cc54903cda9af8cb6fd36a8187ac7c5f22b58a17bda6";
    revisions = {
      r0 = {
        nix = import ../hackage/propeller-0.2.0.0-r0-04f97cebaac0a1200d9651dacc0c07a034506c94b483446b26b9b5c0ce34a2f1.nix;
        revNum = 0;
        sha256 = "04f97cebaac0a1200d9651dacc0c07a034506c94b483446b26b9b5c0ce34a2f1";
      };
      default = "r0";
    };
  };
}