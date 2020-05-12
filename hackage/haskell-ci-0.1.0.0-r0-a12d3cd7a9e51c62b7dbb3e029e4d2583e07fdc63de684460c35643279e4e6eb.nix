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
    flags = { shellcheck = true; };
    package = {
      specVersion = "1.18";
      identifier = { name = "haskell-ci"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel, Oleg Grenrus";
      homepage = "http://haskell-ci.rtfd.org/";
      url = "";
      synopsis = "Cabal package script generator for Travis-CI";
      description = "Script generator (@make-travis-yml@) for [Travis-CI](https://travis-ci.org/) for continuous-integration testing of Haskell Cabal packages.\n\nIncluded features (not limited to):\n\n* Multiple GHC support\n* Dependency caching\n* cabal.project support (see [Nix-style local builds documentation](http://cabal.readthedocs.io/en/latest/nix-local-build-overview.html)\n* Runs tests and builds benchmarks\n* Generates Haddocks\n* macOS (OSX) support\n* building with specific constraints\n\n=== Quick Start Guide\n\nAdd a @tested-with@ line to your @.cabal@ file (e.g. @tested-with: GHC == 8.0.2 || == 8.2.2@) and then run @make-travis-yml yourpackage.cabal -o .travis.yml@ to generate the Travis-CI job script.\n\nSee @make-travis-yml --help@ for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ] ++ (pkgs.lib).optional (flags.shellcheck && (compiler.isGhc && ((compiler.version).ge "7.10" && (compiler.version).lt "8.5"))) (hsPkgs."ShellCheck" or (errorHandler.buildDepError "ShellCheck"));
        buildable = true;
        };
      exes = {
        "make-travis-yml" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-ci" or (errorHandler.buildDepError "haskell-ci"))
            ];
          buildable = true;
          };
        };
      tests = {
        "golden" = {
          depends = [
            (hsPkgs."haskell-ci" or (errorHandler.buildDepError "haskell-ci"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            ];
          buildable = true;
          };
        };
      };
    }