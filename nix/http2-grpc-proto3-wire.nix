{
  "0.1.0.0" = {
    sha256 = "1b5ecfe5b946ba3c06c691b5cb5060034cea23535e333af20f1361f04fd56702";
    revisions = {
      r0 = {
        nix = import ../hackage/http2-grpc-proto3-wire-0.1.0.0-r0-2bd756b17a5dc802ea07f0322ab90c3c61272dfcf4b42772e7bbd91c1f3f4d35.nix;
        revNum = 0;
        sha256 = "2bd756b17a5dc802ea07f0322ab90c3c61272dfcf4b42772e7bbd91c1f3f4d35";
        };
      r1 = {
        nix = import ../hackage/http2-grpc-proto3-wire-0.1.0.0-r1-4f6c0d27048756155b82ebf7385a20cc8241c7bd854e96d1dd6a1827e75fa410.nix;
        revNum = 1;
        sha256 = "4f6c0d27048756155b82ebf7385a20cc8241c7bd854e96d1dd6a1827e75fa410";
        };
      r2 = {
        nix = import ../hackage/http2-grpc-proto3-wire-0.1.0.0-r2-2e0c5f85c9b83036410bf758fd00e7c8f178ae33b7fa7a7c87ac09dfa0eb2f90.nix;
        revNum = 2;
        sha256 = "2e0c5f85c9b83036410bf758fd00e7c8f178ae33b7fa7a7c87ac09dfa0eb2f90";
        };
      default = "r2";
      };
    };
  }