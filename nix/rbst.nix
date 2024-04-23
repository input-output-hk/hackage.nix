{
  "0.0.0.0" = {
    sha256 = "bce703d7820bf2a117151f518d31791d71b6d55221e10d3c89e9cf180948d9b9";
    revisions = {
      r0 = {
        nix = import ../hackage/rbst-0.0.0.0-r0-681b9700ed69e8743d043dc6e62c650d5d0956d03ba1579caf8cba5bb53a3c17.nix;
        revNum = 0;
        sha256 = "681b9700ed69e8743d043dc6e62c650d5d0956d03ba1579caf8cba5bb53a3c17";
      };
      default = "r0";
    };
  };
  "0.0.0.1" = {
    sha256 = "f2c6d4848162f6632883783601b5619551be60652a1801200596f18c77b85738";
    revisions = {
      r0 = {
        nix = import ../hackage/rbst-0.0.0.1-r0-103ca9e34cf462da4e62f799fe70ff9f5e054c9ce2dd76990d3b90a72c3d8f82.nix;
        revNum = 0;
        sha256 = "103ca9e34cf462da4e62f799fe70ff9f5e054c9ce2dd76990d3b90a72c3d8f82";
      };
      default = "r0";
    };
  };
}