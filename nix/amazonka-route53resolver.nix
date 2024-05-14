{
  "2.0" = {
    sha256 = "dd9c17ad1760618e9700041b14b0d6c8b82365e24e211772c7ee8999b5a69103";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-route53resolver-2.0-r0-ec9f5bb133b7b12bbf9c966025193bd1c923809c11980ff38a9359b8c9af2b02.nix;
        revNum = 0;
        sha256 = "ec9f5bb133b7b12bbf9c966025193bd1c923809c11980ff38a9359b8c9af2b02";
      };
      r1 = {
        nix = import ../hackage/amazonka-route53resolver-2.0-r1-b0dde991cab00e5a743fad894616ba3549c81e4d94075ff1d8abd66582b985be.nix;
        revNum = 1;
        sha256 = "b0dde991cab00e5a743fad894616ba3549c81e4d94075ff1d8abd66582b985be";
      };
      default = "r1";
    };
  };
}