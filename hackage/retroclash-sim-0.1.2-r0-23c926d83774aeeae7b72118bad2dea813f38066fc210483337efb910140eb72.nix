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
      identifier = { name = "retroclash-sim"; version = "0.1.2"; };
      license = "MIT";
      copyright = "2021 Gergő Érdi";
      maintainer = "gergo@erdi.hu";
      author = "Gergő Érdi";
      homepage = "https://unsafePerform.IO/retroclash/";
      url = "";
      synopsis = "High-level simulators from the book \"Retrocomputing with Clash\"";
      description = "A library of functionality useful when simulating retro-computers:\n\n* Interactive Clash simulation in IO\n\n* SDL-based framework for graphics simulation\n\n* VGA signal interpreter\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."arrows" or (errorHandler.buildDepError "arrows"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."clash-ghc" or (errorHandler.buildDepError "clash-ghc"))
          (hsPkgs."clash-lib" or (errorHandler.buildDepError "clash-lib"))
          (hsPkgs."clash-prelude" or (errorHandler.buildDepError "clash-prelude"))
          (hsPkgs."ghc-typelits-extra" or (errorHandler.buildDepError "ghc-typelits-extra"))
          (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
          (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."retroclash-lib" or (errorHandler.buildDepError "retroclash-lib"))
          (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }