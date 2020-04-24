{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { deverror = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ghc-typelits-extra"; version = "0.1.1"; };
      license = "BSD-2-Clause";
      copyright = "Copyright © 2015 University of Twente";
      maintainer = "christiaan.baaij@gmail.com";
      author = "Christiaan Baaij";
      homepage = "http://www.clash-lang.org/";
      url = "";
      synopsis = "Additional type-level operations on GHC.TypeLits.Nat";
      description = "Additional type-level operations on @GHC.TypeLits.Nat@:\n\n* @GHC.TypeLits.Extra.GCD@: a type-level @gcd@\n\n* @GHC.TypeLits.Extra.CLog@: type-level equivalent of\n\\\"@clog x y = ceiling (logBase x y)@\\\"\n\nAnd a custom solver for the above operations defined in\n@GHC.TypeLits.Extra.Solver@ as a GHC type-checker plugin. To use the plugin,\nadd the\n\n@\nOPTIONS_GHC -fplugin GHC.TypeLits.Extra.Solver\n@\n\npragma to the header of your file.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          (hsPkgs."ghc-tcplugins-extra" or ((hsPkgs.pkgs-errors).buildDepError "ghc-tcplugins-extra"))
          ];
        buildable = true;
        };
      tests = {
        "test-ghc-typelits-extra" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghc-typelits-extra" or ((hsPkgs.pkgs-errors).buildDepError "ghc-typelits-extra"))
            (hsPkgs."ghc-typelits-natnormalise" or ((hsPkgs.pkgs-errors).buildDepError "ghc-typelits-natnormalise"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }