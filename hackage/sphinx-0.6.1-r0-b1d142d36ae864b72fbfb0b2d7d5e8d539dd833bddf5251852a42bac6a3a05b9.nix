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
      specVersion = "1.10";
      identifier = { name = "sphinx"; version = "0.6.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskelldevelopers@chordify.net";
      author = "Chris Eidhof <ce+sphinx@tupil.com>, Greg Weber <greg@gregweber.info>, Aleksandar Dimitrov <aleks.dimitrov@gmail.com>";
      homepage = "https://github.com/chordify/haskell-sphinx-client";
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
          (hsPkgs."network-simple" or (errorHandler.buildDepError "network-simple"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"))
          ];
        buildable = true;
        };
      };
    }