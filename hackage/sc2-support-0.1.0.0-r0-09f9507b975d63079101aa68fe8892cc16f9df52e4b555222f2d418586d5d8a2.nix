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
      identifier = { name = "sc2-support"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Sophie Taylor";
      maintainer = "Sophie Taylor <sophie@spacekitteh.moe>";
      author = "Sophie Taylor <sophie@spacekitteh.moe>";
      homepage = "https://github.com/spacekitteh/sc2hs";
      url = "";
      synopsis = "Support and utility library for sc2hs.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."lens-labels" or (errorHandler.buildDepError "lens-labels"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }