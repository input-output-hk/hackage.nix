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
      specVersion = "3.0";
      identifier = { name = "int-conv"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus";
      homepage = "https://github.com/phadej/int-conv";
      url = "";
      synopsis = "Direct conversion functions between Ints and Words";
      description = "This library defines a complete collection of conversion functions between machine integers:\n@wordToWord32@, @word32ToWord64@ etc.\n\nAll these functions behave like @fromIntegral@, but avoid going through @Integer@. (GHC has a specific optimisation to remove an intermediate @Integer@ from @fromIntegral@ conversions, but if we can be explicit, and wont need to rely on an optimisation, why wouldn't we?)\n\nThere are also conversion to/from @Char@. Convertions to @Char@ are __unsafe__, as these allow to create invalid @Char@ values (negative, or larger then maximum codepoint).\nIn particular @intToChar@ is not the same as @chr@; @chr@ performs bounds check; @intToChar@ doesn't.\nConversion from @Char@ are equivalent to @fromIntegral . ord@.\nConversion to @Char@ are equivalent to @intToChar . fromIntegral@, which __does not__ perform bounds checks.\n\nOnly GHC>=9.4 is supported, as the primitive integers had been reworked in GHC-9.4.\n\nThis package deliberately doesn't provide any abstraction over the conversion functions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."int-conv" or (errorHandler.buildDepError "int-conv"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }