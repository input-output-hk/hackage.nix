{
  "1.0.0" = {
    sha256 = "db6e08ce1e794aac7d1e95029ab39c41319ac32c2be80bc14523b41b5d02196b";
    revisions = {
      r0 = {
        nix = import ../hackage/haxl-effectful-1.0.0-r0-7490ff18d67ee9e43e23aeb5056ab789af865e86dcb0e659a39ffc9516fbf0e2.nix;
        revNum = 0;
        sha256 = "7490ff18d67ee9e43e23aeb5056ab789af865e86dcb0e659a39ffc9516fbf0e2";
      };
      default = "r0";
    };
  };
  "1.1.0" = {
    sha256 = "c43805be05e034b241e2677c33ce32ac9213ce4aa81829eeebdafb7daf8d123a";
    revisions = {
      r0 = {
        nix = import ../hackage/haxl-effectful-1.1.0-r0-0966e49843ba3a8841fa6b50cfcbe2fdd5779f4ee63ff4d0b63c30eb4ccdce23.nix;
        revNum = 0;
        sha256 = "0966e49843ba3a8841fa6b50cfcbe2fdd5779f4ee63ff4d0b63c30eb4ccdce23";
      };
      r1 = {
        nix = import ../hackage/haxl-effectful-1.1.0-r1-e257e7a1baca5a19a554a94ed14db3b70f10b46c3ff2df787f52a09733203b36.nix;
        revNum = 1;
        sha256 = "e257e7a1baca5a19a554a94ed14db3b70f10b46c3ff2df787f52a09733203b36";
      };
      default = "r1";
    };
  };
}