{
  "0.0.0" = {
    sha256 = "1cd6bff950344b43995a5f1200260986fd497fa9d74687967895750531ecb38a";
    revisions = {
      r0 = {
        nix = import ../hackage/http3-0.0.0-r0-7b61249438eb46933729c0d0a9d98aa5b60ada2fec089bff811413a38b6506dd.nix;
        revNum = 0;
        sha256 = "7b61249438eb46933729c0d0a9d98aa5b60ada2fec089bff811413a38b6506dd";
        };
      default = "r0";
      };
    };
  "0.0.1" = {
    sha256 = "28414a069cb10b0d3a47e6ba07e897da3c953cc2c93562246af795fb256b395c";
    revisions = {
      r0 = {
        nix = import ../hackage/http3-0.0.1-r0-2113b88d106811bb169d1a19d10e19ee91d08470f6c343d9aebaafd4ae8927df.nix;
        revNum = 0;
        sha256 = "2113b88d106811bb169d1a19d10e19ee91d08470f6c343d9aebaafd4ae8927df";
        };
      r1 = {
        nix = import ../hackage/http3-0.0.1-r1-e7cb4786f410bb8d013584f3046b41dc97aa8d91ca37235c43ed24f43c5da34d.nix;
        revNum = 1;
        sha256 = "e7cb4786f410bb8d013584f3046b41dc97aa8d91ca37235c43ed24f43c5da34d";
        };
      default = "r1";
      };
    };
  "0.0.2" = {
    sha256 = "f9b33c9389ba7e481153bfa62d6b28278c5fdba682c88b71e94dd9b1e99bb069";
    revisions = {
      r0 = {
        nix = import ../hackage/http3-0.0.2-r0-2d2d1c0301e777a0f0243b68e180e13fcd03f5e510c9497c7144af4b85b65c31.nix;
        revNum = 0;
        sha256 = "2d2d1c0301e777a0f0243b68e180e13fcd03f5e510c9497c7144af4b85b65c31";
        };
      default = "r0";
      };
    };
  }