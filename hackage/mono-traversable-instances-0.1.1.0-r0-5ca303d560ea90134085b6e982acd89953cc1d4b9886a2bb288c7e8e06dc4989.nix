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
      specVersion = "1.12";
      identifier = {
        name = "mono-traversable-instances";
        version = "0.1.1.0";
        };
      license = "MIT";
      copyright = "";
      maintainer = "michael@fpcomplete.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/mono-traversable#readme";
      url = "";
      synopsis = "Extra typeclass instances for mono-traversable";
      description = "See docs and README at <http://www.stackage.org/package/mono-traversable-instance>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."dlist-instances" or (errorHandler.buildDepError "dlist-instances"))
          (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector-instances" or (errorHandler.buildDepError "vector-instances"))
          ];
        buildable = true;
        };
      };
    }