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
      identifier = { name = "haddocset"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Hirotomo Moriwaki";
      maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      homepage = "https://github.com/philopon/haddocset";
      url = "";
      synopsis = "Generate docset of Dash by Haddock haskell documentation tool";
      description = "please read README.md <https://github.com/philopon/haddocset/blob/master/README.md>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "haddocset" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ] ++ (if compiler.isGhc && compiler.version.ge "7.8"
            then [
              (hsPkgs."haddock-api" or (errorHandler.buildDepError "haddock-api"))
            ]
            else [
              (hsPkgs."haddock" or (errorHandler.buildDepError "haddock"))
            ]);
          buildable = true;
        };
      };
    };
  }