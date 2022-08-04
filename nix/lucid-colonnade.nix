{
  "1.0" = {
    sha256 = "acaeca3ecfa98c3892e3ec29303a8800b00232f4b571cdbce0e1f72be00e4b8e";
    revisions = {
      r0 = {
        nix = import ../hackage/lucid-colonnade-1.0-r0-56d46e46145aa7bd87df970fe92eda6f35dc802a0664b24b7891fd44c5c19f08.nix;
        revNum = 0;
        sha256 = "56d46e46145aa7bd87df970fe92eda6f35dc802a0664b24b7891fd44c5c19f08";
        };
      r1 = {
        nix = import ../hackage/lucid-colonnade-1.0-r1-9b366afdb964bfd926b29841ca207c75e44a6dcc0045743e81fab48b989eec23.nix;
        revNum = 1;
        sha256 = "9b366afdb964bfd926b29841ca207c75e44a6dcc0045743e81fab48b989eec23";
        };
      default = "r1";
      };
    };
  "1.0.1" = {
    sha256 = "6843fb060de4688077decd14e027909e50fa5c8729989f8103f8163f0374773d";
    revisions = {
      r0 = {
        nix = import ../hackage/lucid-colonnade-1.0.1-r0-841494203cef1dd184c38149c217a07de2d1c64efe64ae4c7a7e4f5c1afda034.nix;
        revNum = 0;
        sha256 = "841494203cef1dd184c38149c217a07de2d1c64efe64ae4c7a7e4f5c1afda034";
        };
      default = "r0";
      };
    };
  }