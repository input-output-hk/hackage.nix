{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "token-limiter"; version = "0.1.0.0"; };
      license = "BSD-2-Clause";
      copyright = "Copyright (C) 2019 Kadena LLC";
      maintainer = "greg@gregorycollins.net";
      author = "Gregory Collins";
      homepage = "https://github.com/gregorycollins/token-limiter";
      url = "";
      synopsis = "Fast rate limiting using the token bucket algorithm (BSD)";
      description = "Fast rate limiting using the token bucket algorithm. BSD-licensed.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.clock) (hsPkgs.ghc-prim) ];
        };
      tests = {
        "token-limiter-tests" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.clock)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.token-limiter)
            ];
          };
        };
      };
    }