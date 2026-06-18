{
  "1.0.0.0" = {
    sha256 = "dfdd20f85c0c7aee57566b8e5e0f9dbee0147103165f713024370e589de04e7b";
    revisions = {
      r0 = {
        nix = import ../hackage/dataframe-json-1.0.0.0-r0-8e33ff7e4718372a8b78e553c47449653c0a292a9145679f872ef75cf5ab024f.nix;
        revNum = 0;
        sha256 = "8e33ff7e4718372a8b78e553c47449653c0a292a9145679f872ef75cf5ab024f";
      };
      default = "r0";
    };
  };
  "1.0.1.0" = {
    sha256 = "6e9be0e6f7fec9bdd13db9fab2a77fb29040e602719cbd9efff3fc876ea8ddcb";
    revisions = {
      r0 = {
        nix = import ../hackage/dataframe-json-1.0.1.0-r0-e989ae6f44eb21aa75c3003f9fae7c360b0aef886f4c3b9316475c7fa6cdc4a1.nix;
        revNum = 0;
        sha256 = "e989ae6f44eb21aa75c3003f9fae7c360b0aef886f4c3b9316475c7fa6cdc4a1";
      };
      default = "r0";
    };
  };
  "1.0.1.1" = {
    sha256 = "8d6d05efa43127c4b4834422b4cce7acb2e33a91d6e4e78ae612c171145158a0";
    revisions = {
      r0 = {
        nix = import ../hackage/dataframe-json-1.0.1.1-r0-5a5cc0f95b4e4b671c35e2d0bbb6e8a81d186888a5ff5e18e59041559d314cf3.nix;
        revNum = 0;
        sha256 = "5a5cc0f95b4e4b671c35e2d0bbb6e8a81d186888a5ff5e18e59041559d314cf3";
      };
      r1 = {
        nix = import ../hackage/dataframe-json-1.0.1.1-r1-3c93d9b320f4c92a08e6fd0ef49863ec76a0ff65954278a08e1e26b179918ec0.nix;
        revNum = 1;
        sha256 = "3c93d9b320f4c92a08e6fd0ef49863ec76a0ff65954278a08e1e26b179918ec0";
      };
      default = "r1";
    };
  };
}