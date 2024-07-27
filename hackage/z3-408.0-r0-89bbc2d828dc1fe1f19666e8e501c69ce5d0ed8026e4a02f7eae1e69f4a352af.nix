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
      identifier = { name = "z3"; version = "408.0"; };
      license = "BSD-3-Clause";
      copyright = "2012-2018, Iago Abal, David Castro";
      maintainer = "Iago Abal <mail@iagoabal.eu>";
      author = "Iago Abal <mail@iagoabal.eu>,\nDavid Castro <david.castro.dcp@gmail.com>";
      homepage = "https://github.com/IagoAbal/haskell-z3";
      url = "";
      synopsis = "Bindings for the Z3 Theorem Prover";
      description = "Bindings for the Z3 4./x/ Theorem Prover (<https://github.com/Z3Prover/z3>).\n\n* \"Z3.Base.C\" provides the raw foreign imports from Z3's C API.\n\n* \"Z3.Base\" does the marshaling of values between Haskell and C,\nand transparently handles reference counting of Z3 objects for you.\n\n* \"Z3.Monad\" provides a convenient monadic wrapper for the common usage scenario.\n\nExamples: <https://github.com/IagoAbal/haskell-z3/tree/master/examples>\n\nChangelog: <https://github.com/IagoAbal/haskell-z3/blob/master/CHANGES.md>\n\nInstallation:\n\n* /Unix-like/: Just be sure to use the standard locations for\ndynamic libraries (\\/usr\\/lib) and header files (\\/usr\\/include),\nor else use the --extra-lib-dirs and --extra-include-dirs Cabal flags.\n\n(Hackage reports a build failure because Z3's library is missing.)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        libs = if system.isOsx || system.isWindows
          then [ (pkgs."z3" or (errorHandler.sysDepError "z3")) ]
          else [
            (pkgs."gomp" or (errorHandler.sysDepError "gomp"))
            (pkgs."z3" or (errorHandler.sysDepError "z3"))
            (pkgs."gomp" or (errorHandler.sysDepError "gomp"))
          ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
      exes = {
        "examples" = {
          depends = pkgs.lib.optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."z3" or (errorHandler.buildDepError "z3"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = if flags.examples then true else false;
        };
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."z3" or (errorHandler.buildDepError "z3"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }