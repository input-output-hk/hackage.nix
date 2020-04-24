{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "test-sandbox-quickcheck"; version = "0.0.1.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Benjamin Surma <benjamin.surma@gmail.com>";
      author = "Benjamin Surma <benjamin.surma@gmail.com>";
      homepage = "http://gree.github.io/haskell-test-sandbox/";
      url = "";
      synopsis = "QuickCheck convenience functions for use with test-sandbox";
      description = "This package provides wrappers around the Test.QuickCheck property testing functions,\nallowing them to be used easily in the Test.Sandbox monad provided by the test-sandbox package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."test-sandbox" or ((hsPkgs.pkgs-errors).buildDepError "test-sandbox"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      };
    }