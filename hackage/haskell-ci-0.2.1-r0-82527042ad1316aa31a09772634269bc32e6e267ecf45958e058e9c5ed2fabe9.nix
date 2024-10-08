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
      specVersion = "2.2";
      identifier = { name = "haskell-ci"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel, Oleg Grenrus";
      homepage = "https://haskell-ci.rtfd.org/";
      url = "";
      synopsis = "Cabal package script generator for Travis-CI";
      description = "Script generator (@haskell-ci@) for [Travis-CI](https://travis-ci.org/) for continuous-integration testing of Haskell Cabal packages.\n\nIncluded features (not limited to):\n\n* Multiple GHC support\n* Dependency caching\n* cabal.project support (see [Nix-style local builds documentation](https://cabal.readthedocs.io/en/latest/nix-local-build-overview.html))\n* Runs tests and builds benchmarks\n* Generates Haddocks\n* macOS (OSX) support\n* building with specific constraints\n\n=== Quick Start Guide\n\nAdd a @tested-with@ line to your @.cabal@ file (e.g. @tested-with: GHC == 8.0.2 || == 8.2.2@) and then run @haskell-ci yourpackage.cabal -o .travis.yml@ to generate the Travis-CI job script.\n\nSee @haskell-ci --help@ for more information.";
      buildType = "Simple";
    };
    components = {
      sublibs = {
        "haskell-ci-internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
            (hsPkgs."HsYAML" or (errorHandler.buildDepError "HsYAML"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ] ++ pkgs.lib.optional (flags.shellcheck && (compiler.isGhc && (compiler.version.ge "7.10" && compiler.version.lt "8.7"))) (hsPkgs."ShellCheck" or (errorHandler.buildDepError "ShellCheck"));
          buildable = true;
        };
      };
      exes = {
        "haskell-ci" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-ci".components.sublibs.haskell-ci-internal or (errorHandler.buildDepError "haskell-ci:haskell-ci-internal"))
          ];
          buildable = true;
        };
      };
      tests = {
        "golden" = {
          depends = [
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."haskell-ci".components.sublibs.haskell-ci-internal or (errorHandler.buildDepError "haskell-ci:haskell-ci-internal"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
    };
  }