{
  "2.0" = {
    sha256 = "f5c57c1acb573ca8a80e43af64fd50fecf576b5821520d41a092dc1629373942";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-iotsecuretunneling-2.0-r0-9a012da6d1d177d34f061bd229645df00a74f089fa3822796406bf12abae43cf.nix;
        revNum = 0;
        sha256 = "9a012da6d1d177d34f061bd229645df00a74f089fa3822796406bf12abae43cf";
      };
      r1 = {
        nix = import ../hackage/amazonka-iotsecuretunneling-2.0-r1-e9792c308e423ef87d9a79d921f0aba3c52e1355fcfd6d85ab284109a6b95cd2.nix;
        revNum = 1;
        sha256 = "e9792c308e423ef87d9a79d921f0aba3c52e1355fcfd6d85ab284109a6b95cd2";
      };
      default = "r1";
    };
  };
}