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
      specVersion = "1.22";
      identifier = { name = "generic-arbitrary"; version = "0.2.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "makeit@typeable.io";
      author = "Typeable.io contributors";
      homepage = "http://github.com/typeable/generic-arbitrary#readme";
      url = "";
      synopsis = "Generic implementation for QuickCheck's Arbitrary";
      description = "Generic implementations of methods of the 'Arbitrary' class from the\nQuickCheck library. The approach taken here can lead to diverging instances\nfor recursive types but is safe for non-recursive ones and guarantees\nflat distribution for constructors of sum-types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }