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
      identifier = { name = "parsec"; version = "3.1.13.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Herbert Valerio Riedel <hvr@gnu.org>";
      author = "Daan Leijen <daan@microsoft.com>, Paolo Martini <paolo@nemail.it>, Antoine Latter <aslatter@gmail.com>";
      homepage = "https://github.com/hvr/parsec";
      url = "";
      synopsis = "Monadic parser combinators";
      description = "Parsec is designed from scratch as an industrial-strength parser\nlibrary.  It is simple, safe, well documented (on the package\nhomepage), has extensive libraries, good error messages,\nand is fast.  It is defined as a monad transformer that can be\nstacked on arbitrary monads, and it is also parametric in the\ninput stream type.\n\nThe main entry point is the \"Text.Parsec\" module which provides\ndefaults for parsing 'Char'acter data.\n\nThe \"Text.ParserCombinators.Parsec\" module hierarchy contains\nthe legacy @parsec-2@ API and may be removed at some point in\nthe future.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ] ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "8.0")) [
          (hsPkgs."fail" or (errorHandler.buildDepError "fail"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
        ];
        buildable = true;
      };
      tests = {
        "parsec." = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
          buildable = true;
        };
      };
    };
  }