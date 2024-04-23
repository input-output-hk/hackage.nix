{
  "0.0.1" = {
    sha256 = "ffa037c699bd279dca72e32941ae0685bfa1152bb9c931565b25d2b36ce62d8c";
    revisions = {
      r0 = {
        nix = import ../hackage/hscharm-0.0.1-r0-1ea6cada8e6523ccc3116874525c756f86194870cf195e99ffa1d461c72ad752.nix;
        revNum = 0;
        sha256 = "1ea6cada8e6523ccc3116874525c756f86194870cf195e99ffa1d461c72ad752";
      };
      default = "r0";
    };
  };
  "0.0.2" = {
    sha256 = "cff22297fadb70442d0116a0df4c9a3e857c08ea59ee8c2c39f04e418a1ce19c";
    revisions = {
      r0 = {
        nix = import ../hackage/hscharm-0.0.2-r0-9999a63af4e7301d3f521aa119dadcee6e30a2215aeabe021ef7f6caf16f5a90.nix;
        revNum = 0;
        sha256 = "9999a63af4e7301d3f521aa119dadcee6e30a2215aeabe021ef7f6caf16f5a90";
      };
      default = "r0";
    };
  };
}