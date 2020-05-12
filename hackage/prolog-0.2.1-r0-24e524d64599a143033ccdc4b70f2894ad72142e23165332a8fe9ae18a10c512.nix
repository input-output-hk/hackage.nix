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
      specVersion = "1.6";
      identifier = { name = "prolog"; version = "0.2.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Marcel Fourné (haskell@marcelfourne.de)";
      author = "Matthias Bartsch";
      homepage = "";
      url = "";
      synopsis = "A Prolog interpreter written in Haskell.";
      description = "A Prolog interpreter written in Haskell. Implements a subset of the Prolog language.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }