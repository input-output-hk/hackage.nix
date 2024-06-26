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
      identifier = { name = "simpleprelude"; version = "1.0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jmg@cs.uni-kl.de";
      author = "Jean-Marie Gaillourdet";
      homepage = "";
      url = "";
      synopsis = "A simplified Haskell prelude for teaching";
      description = "simpleprelude provides an alternative Prelude\nmodule for teaching as well as wrappers for ghc,\nand ghci to use them.\n\nThe simplified Prelude omits the type classes\nNum, Integral, and Ord. Instead it provides\nmonomorphically typed arithmetic operators on\nInteger.\n\nIt also provides two executables: simple-ghc and\nsimple-ghci which are wrappers around ghc and\nghci. They are pre-configured to use the Prelude\nmodule of this library instead of base's Prelude\nmodule.\n\nRelease History:\n\n- 1.0.1.3: Bugfix concerning conditional expressions\n- 1.0.1.1: Fixing missing operator precedences\n- 1.0.1.0: Add a Haskell pre-processor to restore\nthe feel of an implicityly imported Prelude although\nwe use -XNoImplicitPrelude.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      exes = {
        "simple-ghc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          ];
          buildable = true;
        };
        "simple-ghci" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          ];
          buildable = true;
        };
        "simple-pp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          ];
          buildable = true;
        };
      };
    };
  }