{
  "1" = {
    sha256 = "0f0c90b50b439519ce86d721023e06478358b94c5339f8e3dfdf930ad6b16721";
    revisions = {
      r0 = {
        nix = import ../hackage/mdapi-1-r0-5f17fa44e865b0e40c79bdb9afef7cb113f74cd76aa0a34bd2202ddea61e6ca6.nix;
        revNum = 0;
        sha256 = "5f17fa44e865b0e40c79bdb9afef7cb113f74cd76aa0a34bd2202ddea61e6ca6";
      };
      r1 = {
        nix = import ../hackage/mdapi-1-r1-23b50bbb40d56c56dd89e5d0d36b62c7c31e9c0046362a56dfcab3c81a753139.nix;
        revNum = 1;
        sha256 = "23b50bbb40d56c56dd89e5d0d36b62c7c31e9c0046362a56dfcab3c81a753139";
      };
      default = "r1";
    };
  };
}