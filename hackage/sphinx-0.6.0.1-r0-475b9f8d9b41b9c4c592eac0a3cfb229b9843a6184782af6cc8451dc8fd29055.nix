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
    flags = { version-1-1-beta = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "sphinx"; version = "0.6.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Greg Weber <greg@gregweber.info>, Aleksandar Dimitrov <aleks.dimitrov@gmail.com>";
      author = "Chris Eidhof <ce+sphinx@tupil.com>, Greg Weber";
      homepage = "https://github.com/gregwebs/haskell-sphinx-client";
      url = "";
      synopsis = "Haskell bindings to the Sphinx full-text searching daemon.";
      description = "Haskell bindings to the Sphinx full-text searching daemon. Compatible with Sphinx version 2.0";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."data-binary-ieee754" or (errorHandler.buildDepError "data-binary-ieee754"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"))
          ];
        buildable = true;
        };
      };
    }