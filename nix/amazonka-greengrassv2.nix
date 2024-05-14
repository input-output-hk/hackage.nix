{
  "2.0" = {
    sha256 = "dda52a5db9b36d9d5bf1109329727b4e7009cf1edd636b949f8c19a98e5e55c2";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-greengrassv2-2.0-r0-796116f1aeae517f95b67747ab56aefdabf67a7ec6d437e364144817b55013c9.nix;
        revNum = 0;
        sha256 = "796116f1aeae517f95b67747ab56aefdabf67a7ec6d437e364144817b55013c9";
      };
      r1 = {
        nix = import ../hackage/amazonka-greengrassv2-2.0-r1-5d4a7b80d5510a7cabae3ed7d39f9fdc1364c7b2d226b9f37dd1dd29247c0b2a.nix;
        revNum = 1;
        sha256 = "5d4a7b80d5510a7cabae3ed7d39f9fdc1364c7b2d226b9f37dd1dd29247c0b2a";
      };
      default = "r1";
    };
  };
}