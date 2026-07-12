{
  "0.0.0.1" = {
    sha256 = "39cc051e983150d186058c3e8c11529c93874672ef3e49a56ffa09826a1b8463";
    revisions = {
      r0 = {
        nix = import ../hackage/natskell-0.0.0.1-r0-83c6190b03715ddb5e8a95835286f80686ac6a5127defec23d9ac5ee42892b6f.nix;
        revNum = 0;
        sha256 = "83c6190b03715ddb5e8a95835286f80686ac6a5127defec23d9ac5ee42892b6f";
      };
      default = "r0";
    };
  };
  "0.1.0.0" = {
    sha256 = "bd33c9dc707475b62d44bce9f660041cf0f056a63f292250a92f41194ca3b329";
    revisions = {
      r0 = {
        nix = import ../hackage/natskell-0.1.0.0-r0-9759638ad5ed0f5fb3b2cc26007d4c96095bf37a0e9c868d04d99a9704f182ca.nix;
        revNum = 0;
        sha256 = "9759638ad5ed0f5fb3b2cc26007d4c96095bf37a0e9c868d04d99a9704f182ca";
      };
      default = "r0";
    };
  };
}