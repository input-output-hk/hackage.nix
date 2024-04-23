{
  "0.1" = {
    sha256 = "bf1930c5650180d129c9a1c152b67560dc65f8442ab25b9455fff318ab3f319e";
    revisions = {
      r0 = {
        nix = import ../hackage/spoon-0.1-r0-22f094659a88effbeb1732e08f172849362134382f47348d475e99fb8d35d759.nix;
        revNum = 0;
        sha256 = "22f094659a88effbeb1732e08f172849362134382f47348d475e99fb8d35d759";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "1822763cd1b452d33477f9a1e3e86764f9dec9afc13eeb8cefe763b501191397";
    revisions = {
      r0 = {
        nix = import ../hackage/spoon-0.2-r0-5ae0df59dcc877a99b4de5548e2a50433d799155da8ab5d39f15f30398020a97.nix;
        revNum = 0;
        sha256 = "5ae0df59dcc877a99b4de5548e2a50433d799155da8ab5d39f15f30398020a97";
      };
      default = "r0";
    };
  };
  "0.3" = {
    sha256 = "30cc5bb52c2ab5e8b8b795997b6755638fd1ccf8ebbbb95e3a59a41b3c5b5996";
    revisions = {
      r0 = {
        nix = import ../hackage/spoon-0.3-r0-aca466cb28ac71e1741fa0fee9e8e460092e5e1db4ece11db9304c23328aa1d1.nix;
        revNum = 0;
        sha256 = "aca466cb28ac71e1741fa0fee9e8e460092e5e1db4ece11db9304c23328aa1d1";
      };
      default = "r0";
    };
  };
  "0.3.1" = {
    sha256 = "b9b350b6730e34c246bbf7e228a86b3d4925b52c95542f7676d719ef2a9881d4";
    revisions = {
      r0 = {
        nix = import ../hackage/spoon-0.3.1-r0-ec87537cb4f93193d9d11814a25d592f79ac3f621e00d17e4242950400e56b74.nix;
        revNum = 0;
        sha256 = "ec87537cb4f93193d9d11814a25d592f79ac3f621e00d17e4242950400e56b74";
      };
      r1 = {
        nix = import ../hackage/spoon-0.3.1-r1-e46c5e919cc9d0c7b0f671cddb631ef0979622a1e2250c59c7e491a799944527.nix;
        revNum = 1;
        sha256 = "e46c5e919cc9d0c7b0f671cddb631ef0979622a1e2250c59c7e491a799944527";
      };
      default = "r1";
    };
  };
}