{
  "0.1.0" = {
    sha256 = "49b27cb7f0d57fe2679c6c18e0f3d1ff3b11de4cf3b526db9ad00063d3a27710";
    revisions = {
      r0 = {
        nix = import ../hackage/io-throttle-0.1.0-r0-d97c5086074ac15967e416570d6caab07f9b2950ee004f54e64f57a42177c56c.nix;
        revNum = 0;
        sha256 = "d97c5086074ac15967e416570d6caab07f9b2950ee004f54e64f57a42177c56c";
      };
      r1 = {
        nix = import ../hackage/io-throttle-0.1.0-r1-c3903532515f76e374229ea572d11f7ab02a560062425f33649399c5ac61a16e.nix;
        revNum = 1;
        sha256 = "c3903532515f76e374229ea572d11f7ab02a560062425f33649399c5ac61a16e";
      };
      default = "r1";
    };
  };
}