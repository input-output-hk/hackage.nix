{
  "0.5.1.0" = {
    sha256 = "30536e4bfa2be72ec0e6e369b21b220aae08ec39cb022e4e771d83a5ff463efd";
    revisions = {
      r0 = {
        nix = import ../hackage/Cassava-0.5.1.0-r0-cbc656cd8ed729fac856a729a2aed64ddc9260ef04b36c6471e060fc6ee7e1bd.nix;
        revNum = 0;
        sha256 = "cbc656cd8ed729fac856a729a2aed64ddc9260ef04b36c6471e060fc6ee7e1bd";
      };
      r1 = {
        nix = import ../hackage/Cassava-0.5.1.0-r1-02843feba077a700d5d6a0b05c1787a63e1fc7cca312f000960f3386f9394bc6.nix;
        revNum = 1;
        sha256 = "02843feba077a700d5d6a0b05c1787a63e1fc7cca312f000960f3386f9394bc6";
      };
      r2 = {
        nix = import ../hackage/Cassava-0.5.1.0-r2-c2734841eec06049eb02c14ac6367330f063b427979c0133678b355e0fda6a12.nix;
        revNum = 2;
        sha256 = "c2734841eec06049eb02c14ac6367330f063b427979c0133678b355e0fda6a12";
      };
      r3 = {
        nix = import ../hackage/Cassava-0.5.1.0-r3-608fa9efa706eac879864f489cdb0d42493407fc62fa3bc7cb1200106efd9c97.nix;
        revNum = 3;
        sha256 = "608fa9efa706eac879864f489cdb0d42493407fc62fa3bc7cb1200106efd9c97";
      };
      default = "r3";
    };
  };
}