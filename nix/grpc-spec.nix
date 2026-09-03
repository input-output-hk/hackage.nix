{
  "1.0.0" = {
    sha256 = "0dacf33aa17c3640da9c2b36cf70c0c777a378db9e8c80037ee0b7b7199cd2cb";
    revisions = {
      r0 = {
        nix = import ../hackage/grpc-spec-1.0.0-r0-08dfa592e474395f31bb04e13fa7615d506f5287ebd97a72400453d72156851c.nix;
        revNum = 0;
        sha256 = "08dfa592e474395f31bb04e13fa7615d506f5287ebd97a72400453d72156851c";
      };
      default = "r0";
    };
  };
  "1.1.0" = {
    sha256 = "70dc702a923aa7b24237e91b6f83f3f7bbe400b330896268d2814de896bcb424";
    revisions = {
      r0 = {
        nix = import ../hackage/grpc-spec-1.1.0-r0-e0b4b088ffedb46463a0f6b2c8f8092966709e875718c471d4d6e9a3381ff4b7.nix;
        revNum = 0;
        sha256 = "e0b4b088ffedb46463a0f6b2c8f8092966709e875718c471d4d6e9a3381ff4b7";
      };
      default = "r0";
    };
  };
}