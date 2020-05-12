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
      identifier = { name = "typed-streams"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Clinton Mead (2017)";
      maintainer = "clintonmead@gmail.com";
      author = "Clinton Mead";
      homepage = "";
      url = "";
      synopsis = "A stream based replacement for lists";
      description = "This is an (incomplete) stream based replacement for lists, but already includes significant\nfunctionality and can be faster than using lists in certain cases.\n\nSee \"Data.Stream.Typed\" for the most detailed documentation,\nand \"Data.Stream\" for a simpler interface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."make-monofoldable-foldable" or (errorHandler.buildDepError "make-monofoldable-foldable"))
          (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
          (hsPkgs."generic-enum" or (errorHandler.buildDepError "generic-enum"))
          (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."make-monofoldable-foldable" or (errorHandler.buildDepError "make-monofoldable-foldable"))
            (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
            (hsPkgs."generic-enum" or (errorHandler.buildDepError "generic-enum"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }