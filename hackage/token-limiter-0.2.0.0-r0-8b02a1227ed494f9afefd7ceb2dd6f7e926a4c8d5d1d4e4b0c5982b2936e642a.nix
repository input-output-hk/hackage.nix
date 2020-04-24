{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "token-limiter"; version = "0.2.0.0"; };
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
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."clock" or ((hsPkgs.pkgs-errors).buildDepError "clock"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      tests = {
        "token-limiter-tests" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."clock" or ((hsPkgs.pkgs-errors).buildDepError "clock"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."token-limiter" or ((hsPkgs.pkgs-errors).buildDepError "token-limiter"))
            ];
          buildable = true;
          };
        };
      };
    }