{
  "0.1" = {
    sha256 = "0c2cebbcd0ec5366718d0712a8400e9576269e9e2075e92e9563251111e2445b";
    revisions = {
      r0 = {
        nix = import ../hackage/nme-0.1-r0-27add8719760eafdf5c9751d65da11de829d0c3df333b8b9075cc40778be402f.nix;
        revNum = 0;
        sha256 = "27add8719760eafdf5c9751d65da11de829d0c3df333b8b9075cc40778be402f";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "952327e5fe121a50efc38932c2d27f40f62ec322ff68d7a4afa1dee014611f93";
    revisions = {
      r0 = {
        nix = import ../hackage/nme-0.2-r0-c252856634c332d1c98fa6602f02fee340e867d9ec8455217b5b6d2c2ef3c837.nix;
        revNum = 0;
        sha256 = "c252856634c332d1c98fa6602f02fee340e867d9ec8455217b5b6d2c2ef3c837";
      };
      default = "r0";
    };
  };
}