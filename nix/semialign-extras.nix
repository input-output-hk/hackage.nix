{
  "0.1.0.0" = {
    sha256 = "e68810eef0f76a464c8eb42c99b59b3b27559aea098b5fd33b3527e9f8d5ca72";
    revisions = {
      r0 = {
        nix = import ../hackage/semialign-extras-0.1.0.0-r0-e84d04f6c23f9ada7b9222a6e3662793eb0ec4cea97d6af326224bdc6a4ff164.nix;
        revNum = 0;
        sha256 = "e84d04f6c23f9ada7b9222a6e3662793eb0ec4cea97d6af326224bdc6a4ff164";
        };
      r1 = {
        nix = import ../hackage/semialign-extras-0.1.0.0-r1-fe72a693a93c243c6d859c4bed56915868ef56a4bd5b48770e3b62b3172be833.nix;
        revNum = 1;
        sha256 = "fe72a693a93c243c6d859c4bed56915868ef56a4bd5b48770e3b62b3172be833";
        };
      default = "r1";
      };
    };
  }