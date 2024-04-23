{
  "1.0" = {
    sha256 = "3710df353b2a422bd4f86bb0854f49f01b6e788ad19502a63b0ddf0e6f411082";
    revisions = {
      r0 = {
        nix = import ../hackage/tagged-list-1.0-r0-9116d133a76fe4a4356bf2d07d21076b24d6ecba7467edda324c5857dc4a5501.nix;
        revNum = 0;
        sha256 = "9116d133a76fe4a4356bf2d07d21076b24d6ecba7467edda324c5857dc4a5501";
      };
      default = "r0";
    };
  };
  "1.1" = {
    sha256 = "ba0cdf1b64f033ee24ba0b8a0f01e1ae88bf41c052338e7cfa4530685ac2b3bd";
    revisions = {
      r0 = {
        nix = import ../hackage/tagged-list-1.1-r0-53768441db2a81374205db0cea69a17935d3fd8d2ab6a01109ce6a2c9fd41ac8.nix;
        revNum = 0;
        sha256 = "53768441db2a81374205db0cea69a17935d3fd8d2ab6a01109ce6a2c9fd41ac8";
      };
      default = "r0";
    };
  };
}