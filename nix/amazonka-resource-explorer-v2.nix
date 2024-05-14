{
  "2.0" = {
    sha256 = "8b23db1dec50c783062aed6493a3a6f115596afca89a138da0407627daa69b7c";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-resource-explorer-v2-2.0-r0-0581f80f9976125a08e3a58aac8f519738efd7b0af94e20b64e97b38dffb086c.nix;
        revNum = 0;
        sha256 = "0581f80f9976125a08e3a58aac8f519738efd7b0af94e20b64e97b38dffb086c";
      };
      r1 = {
        nix = import ../hackage/amazonka-resource-explorer-v2-2.0-r1-b0c900d8e71b5be3326da70f31dbb3acb3d641a71a28a7a6e4b2cf7ca38f4c67.nix;
        revNum = 1;
        sha256 = "b0c900d8e71b5be3326da70f31dbb3acb3d641a71a28a7a6e4b2cf7ca38f4c67";
      };
      default = "r1";
    };
  };
}