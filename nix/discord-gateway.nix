{
  "0.2.2" = {
    sha256 = "fee7dc3200057e9eb870b21a295bbfd6246b247f44f41986dbafde8caf9088dd";
    revisions = {
      r0 = {
        nix = import ../hackage/discord-gateway-0.2.2-r0-1d776053e485a651250646e395d4ecfae68f60ed34221219604a7b96d5423856.nix;
        revNum = 0;
        sha256 = "1d776053e485a651250646e395d4ecfae68f60ed34221219604a7b96d5423856";
        };
      r1 = {
        nix = import ../hackage/discord-gateway-0.2.2-r1-85a6479594ea864e56bee8498ca5859d9bbd7300f0f8ff81dc50cc470438842b.nix;
        revNum = 1;
        sha256 = "85a6479594ea864e56bee8498ca5859d9bbd7300f0f8ff81dc50cc470438842b";
        };
      default = "r1";
      };
    };
  }