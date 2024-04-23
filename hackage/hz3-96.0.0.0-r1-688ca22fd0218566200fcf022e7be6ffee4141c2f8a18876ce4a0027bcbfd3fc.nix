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
    flags = { examples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hz3"; version = "96.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2012-2018, Iago Abal, David Castro";
      maintainer = "M Farkas-Dyck <strake888@gmail.com>";
      author = "Iago Abal <mail@iagoabal.eu>,\nDavid Castro <david.castro.dcp@gmail.com>";
      homepage = "https://github.com/strake/z3.hs";
      url = "";
      synopsis = "Bindings for the Z3 Theorem Prover";
      description = "Fork of <https://hackage.haskell.org/package/z3 z3> with future-proof version-numbering scheme\n\nBindings for the Z3 4./x/ Theorem Prover (<https://github.com/Z3Prover/z3>).\n\n* \"Z3.Base.C\" provides the raw foreign imports from Z3's C API.\n\n* \"Z3.Base\" does the marshaling of values between Haskell and C,\nand transparently handles reference counting of Z3 objects for you.\n\n* \"Z3.Monad\" provides a convenient monadic wrapper for the common usage scenario.\n\nExamples: <https://github.com/strake/z3.hs/tree/master/examples>\n\nChangelog: <https://github.com/strake/z3.hs/blob/master/CHANGES.md>\n\nInstallation:\n\n* /Unix-like/: Just be sure to use the standard locations for\ndynamic libraries (\\/usr\\/lib) and header files (\\/usr\\/include),\nor else use the --extra-lib-dirs and --extra-include-dirs Cabal flags.\n\n(Hackage reports a build failure because Z3's library is missing.)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        libs = [ (pkgs."z3" or (errorHandler.sysDepError "z3")) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
      exes = {
        "examples" = {
          depends = pkgs.lib.optionals (flags.examples) [
            (hsPkgs."hz3" or (errorHandler.buildDepError "hz3"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = if flags.examples then true else false;
        };
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."hz3" or (errorHandler.buildDepError "hz3"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }