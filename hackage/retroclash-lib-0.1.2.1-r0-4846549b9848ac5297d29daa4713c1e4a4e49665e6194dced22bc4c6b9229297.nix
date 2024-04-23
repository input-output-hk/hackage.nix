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
      identifier = { name = "retroclash-lib"; version = "0.1.2.1"; };
      license = "MIT";
      copyright = "2021 Gergő Érdi";
      maintainer = "gergo@erdi.hu";
      author = "Gergő Érdi";
      homepage = "https://unsafePerform.IO/retroclash/";
      url = "";
      synopsis = "Code shared across the code samples in the book \"Retrocomputing with Clash\"";
      description = "Clash components useful when implementing, or interfacing with,\nretro-computers:\n\n* UART\n\n* Multi-digit seven-segment display driver\n\n* Keypad matrix scanner\n\n* PS/2 keyboard driver\n\n* VGA signal generator\n\n* Video coordinate transformers\n\n* A framework for monadic CPU descriptions\n\n* Address maps\n\n* Various small utilities\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."barbies" or (errorHandler.buildDepError "barbies"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."clash-ghc" or (errorHandler.buildDepError "clash-ghc"))
          (hsPkgs."clash-lib" or (errorHandler.buildDepError "clash-lib"))
          (hsPkgs."clash-prelude" or (errorHandler.buildDepError "clash-prelude"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc-typelits-extra" or (errorHandler.buildDepError "ghc-typelits-extra"))
          (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
          (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."lift-type" or (errorHandler.buildDepError "lift-type"))
          (hsPkgs."monoidal-containers" or (errorHandler.buildDepError "monoidal-containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-orphans" or (errorHandler.buildDepError "th-orphans"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }