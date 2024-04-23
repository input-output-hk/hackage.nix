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
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "bits-extras"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gabriel Wicke <wicke@wikidev.net>";
      author = "Gabriel Wicke <wicke@wikidev.net>";
      homepage = "";
      url = "";
      synopsis = "Efficient high-level bit operations not found in Data.Bits";
      description = "This package contains efficient implementations of high-level bit operations\nmissing from Data.Bits. The implementation is based on GCC builtins, which\ntranslate to specialized instructions where available.\n\nAll operations in this package can also be (less efficiently) implemented in\nterms of Data.Bits operations.\n\n/Issues:/ A GCC-provided library, @libgcc_s@, is dynamically linked to\nprovide software fallbacks on architectures without instructions\ncorresponding to specific operations. This is currently only expected to work\non Linux systems, and even there can lead to issues with GHCi's custom\nlinker. A workaround for GHCi on a linux system: @ln -s \\/lib\\/libgcc_s.so.1\n\\/lib\\/libgcc_s.so@.\n\nThe current plan for broader support is to replace the libgcc dependency with\nbuilt-in fallbacks in C or Haskell code. This needs to closely follow GCC's\nfall-back behaviour for each architecture. Alternative ideas would be\nappreciated.\n\nRelevant Hackage tickets:\n\n* <http://hackage.haskell.org/trac/ghc/ticket/3563>\n\n* <http://hackage.haskell.org/trac/ghc/ticket/4102>\n\n/Changes/:\n\n* 0.1.3: Added a first test and tweaked documentation. No functional changes.\n\n* 0.1.2: Moved the 'Data.Bits.Atomic' module to the package @bits-atomic@.\nThose operations do not depend on libgcc_s and should work wherever GCC 4.X\nis available.  Link to @bits-atomic@ on hackage:\n<http://hackage.haskell.org/package/bits-atomic>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [ (pkgs."gcc_s" or (errorHandler.sysDepError "gcc_s")) ];
        buildable = true;
      };
      exes = {
        "test" = {
          depends = pkgs.lib.optionals (flags.test) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
          ];
          buildable = if flags.test then true else false;
        };
      };
    };
  }