{
  "0.1.0.0" = {
    sha256 = "4e5cdc7e2fce8e93402d0037326a824f79ac1e4d04b687d92237bcb0b3a5f45c";
    revisions = {
      r0 = {
        nix = import ../hackage/http-exchange-instantiations-0.1.0.0-r0-8965694a71ec91deed007a71d7a582da6ae67b607238c0dc8417f8f33d814bfc.nix;
        revNum = 0;
        sha256 = "8965694a71ec91deed007a71d7a582da6ae67b607238c0dc8417f8f33d814bfc";
        };
      r1 = {
        nix = import ../hackage/http-exchange-instantiations-0.1.0.0-r1-305cedf8c0bae0a9832bffc5d66d9f17f6750a1c936c1fc34594f940ddd0fea1.nix;
        revNum = 1;
        sha256 = "305cedf8c0bae0a9832bffc5d66d9f17f6750a1c936c1fc34594f940ddd0fea1";
        };
      default = "r1";
      };
    };
  }