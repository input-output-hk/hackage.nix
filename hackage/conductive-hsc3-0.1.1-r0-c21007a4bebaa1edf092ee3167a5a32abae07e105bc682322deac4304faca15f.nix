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
      specVersion = "1.4";
      identifier = { name = "conductive-hsc3"; version = "0.1.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "renick@gmail.com";
      author = "Renick Bell";
      homepage = "http://www.renickbell.net/doku.php?id=conductive-hsc3";
      url = "";
      synopsis = "a library with examples of using Conductive with hsc3";
      description = "This library contains examples of using Conductive with hsc3. Sythndefs and convenience functions exist for a sampler and an FM synth.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."conductive-base" or (errorHandler.buildDepError "conductive-base"))
          (hsPkgs."conductive-song" or (errorHandler.buildDepError "conductive-song"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
          (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }