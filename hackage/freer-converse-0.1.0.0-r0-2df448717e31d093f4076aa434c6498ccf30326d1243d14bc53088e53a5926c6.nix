{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { reloadable = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "freer-converse"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Robert Hensing";
      maintainer = "hackage@roberthensing.nl";
      author = "Robert Hensing";
      homepage = "";
      url = "";
      synopsis = "Handle effects conversely using monadic conversation";
      description = "One can think of an effectful program and its effect\nhandler as /two communicating processes/.\nThis package provides the missing pieces that let you\nwrite your programs in such a style in\n@Control.Monad.Freer.Converse@.\n\nOne useful area of application is unit testing. The\n@Control.Monad.Freer.TestControl@ intends to provide what\nyou need to write /ad-hoc test fixtures/.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."freer-effects" or ((hsPkgs.pkgs-errors).buildDepError "freer-effects"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "example-Hello" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."freer-effects" or ((hsPkgs.pkgs-errors).buildDepError "freer-effects"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ] ++ (pkgs.lib).optional (!flags.reloadable) (hsPkgs."freer-converse" or ((hsPkgs.pkgs-errors).buildDepError "freer-converse"));
          buildable = true;
          };
        };
      };
    }