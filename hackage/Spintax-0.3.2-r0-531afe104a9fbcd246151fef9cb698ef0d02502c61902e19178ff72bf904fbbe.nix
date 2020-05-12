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
      specVersion = "1.10";
      identifier = { name = "Spintax"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016-2017 - Michel Boucey";
      maintainer = "michel.boucey@cybervisible.fr";
      author = "Michel Boucey";
      homepage = "https://github.com/MichelBoucey/spintax";
      url = "";
      synopsis = "Random text generation based on spintax";
      description = "Random text generation based on spintax with nested alternatives and empty options.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }