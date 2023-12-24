{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "3.0";
      identifier = { name = "quickcheck-groups"; version = "0.0.1.1"; };
      license = "Apache-2.0";
      copyright = "2022–2023 Jonathan Knowles";
      maintainer = "mail@jonathanknowles.net";
      author = "Jonathan Knowles";
      homepage = "";
      url = "";
      synopsis = "Testing group class instances with QuickCheck";
      description = "QuickCheck support for testing instances of type classes defined in the\ngroups library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."groups" or (errorHandler.buildDepError "groups"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
          (hsPkgs."quickcheck-groups".components.sublibs.internal or (errorHandler.buildDepError "quickcheck-groups:internal"))
          ];
        buildable = true;
        };
      sublibs = {
        "internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
            ];
          buildable = true;
          };
        "prelude" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."groups" or (errorHandler.buildDepError "groups"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."quickcheck-groups" or (errorHandler.buildDepError "quickcheck-groups"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."groups" or (errorHandler.buildDepError "groups"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
            (hsPkgs."quickcheck-groups" or (errorHandler.buildDepError "quickcheck-groups"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }