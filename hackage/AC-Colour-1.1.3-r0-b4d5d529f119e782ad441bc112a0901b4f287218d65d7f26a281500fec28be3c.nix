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
      identifier = { name = "AC-Colour"; version = "1.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "MathematicalOrchid@hotmail.com";
      author = "Andrew Coppin";
      homepage = "";
      url = "";
      synopsis = "Efficient RGB colour types.";
      description = "This Haskell library is a basic RGB colour types, with\nboth @Double@ and @Word8@ channel types. It implements\nefficient conversions between the two (GHC-specific),\nand general arithmetic over colours.\nChanges:\n* Added (linear) colour map support.\n* Added pack/unpack functions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
        ];
        buildable = true;
      };
    };
  }