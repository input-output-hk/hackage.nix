{
  "1.0" = {
    sha256 = "a3f6d300a30914183662e01ddd1e56965188b76d459c765fefd297298049633e";
    revisions = {
      r0 = {
        nix = import ../hackage/definitive-reactive-1.0-r0-8748292227444591a9e5f04c3a810395b24fb1522ebb26654e426ac69ac66f31.nix;
        revNum = 0;
        sha256 = "8748292227444591a9e5f04c3a810395b24fb1522ebb26654e426ac69ac66f31";
        };
      r1 = {
        nix = import ../hackage/definitive-reactive-1.0-r1-8c3c6afcc4ce7569ede32c8006d1d66fb10448321159f875d1dec03419bd7797.nix;
        revNum = 1;
        sha256 = "8c3c6afcc4ce7569ede32c8006d1d66fb10448321159f875d1dec03419bd7797";
        };
      default = "r1";
      };
    };
  }