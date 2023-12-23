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
      specVersion = "2.2";
      identifier = { name = "doctest-lib"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>, Simon Hengel <sol@typeful.net>";
      homepage = "https://hub.darcs.net/thielema/doctest-lib/";
      url = "";
      synopsis = "Parts of doctest exposed as library";
      description = "Parts of doctest exposed as library.\nFor use with the doctest-extract utility.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }