{
  "1.0.0" = {
    sha256 = "31e3d0bf8e33e6e1c748db5a3a7226cbfeec682d257da061bec1c8ea29b8cebc";
    revisions = {
      r0 = {
        nix = import ../hackage/gemmula-altera-1.0.0-r0-174f574ec1fbb1770460038dfae71797d8544e439f68da07df529c3a94c7f918.nix;
        revNum = 0;
        sha256 = "174f574ec1fbb1770460038dfae71797d8544e439f68da07df529c3a94c7f918";
        };
      default = "r0";
      };
    };
  "2.0.0" = {
    sha256 = "079a63e13c1198a170767ca5bdea4b4c4e3c41962a7988dafc3c4399acc9de6e";
    revisions = {
      r0 = {
        nix = import ../hackage/gemmula-altera-2.0.0-r0-11cee53a738508bd8aca10737532db257d35586320c1190272c903e57707f326.nix;
        revNum = 0;
        sha256 = "11cee53a738508bd8aca10737532db257d35586320c1190272c903e57707f326";
        };
      default = "r0";
      };
    };
  }