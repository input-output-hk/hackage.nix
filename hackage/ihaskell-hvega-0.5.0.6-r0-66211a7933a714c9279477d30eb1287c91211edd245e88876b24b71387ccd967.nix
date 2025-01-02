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
      specVersion = "1.18";
      identifier = { name = "ihaskell-hvega"; version = "0.5.0.6"; };
      license = "BSD-3-Clause";
      copyright = "2018-2025 Douglas Burke";
      maintainer = "dburke.gw@gmail.com";
      author = "Douglas Burke";
      homepage = "https://github.com/DougBurke/hvega";
      url = "";
      synopsis = "IHaskell display instance for hvega types.";
      description = "Support Vega-Lite visualizations in IHaskell notebooks.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."hvega" or (errorHandler.buildDepError "hvega"))
          (hsPkgs."ihaskell" or (errorHandler.buildDepError "ihaskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }