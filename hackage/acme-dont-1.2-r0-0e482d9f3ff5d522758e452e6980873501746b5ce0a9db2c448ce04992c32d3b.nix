{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "acme-dont"; version = "1.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Gracjan Polak";
      maintainer = "jack@jackkelly.name";
      author = "Gracjan Polak <gracjanpolak@gmail.com>";
      homepage = "https://git.sr.ht/~jack/acme-dont";
      url = "";
      synopsis = "A \"don't\" construct";
      description = "The Acme.Dont module provides a @don't@ command, which\nis the opposite of Haskell's built-in @do@.  It is used exactly\nlike the @do@ monadic construct except that, instead of executing\nthe block it controls, it... well... doesn't.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "acme-dont-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."acme-dont" or ((hsPkgs.pkgs-errors).buildDepError "acme-dont"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }