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
      identifier = { name = "vabal"; version = "2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "franciman12@gmail.com";
      author = "Francesco Magliocca";
      homepage = "https://github.com/vabal/vabal";
      url = "";
      synopsis = "the cabal companion";
      description = "`vabal` finds a version of `GHC` that is compatible with\nthe constraints imposed on base package found\nin the cabal file analyzed. It then uses `ghcup`\nto obtain the correct version of the compiler (potentially downloading it).\nIt supports three modes:\n\n* @vabal configure@ (it configures your project to use the obtained `ghc`),\n* @vabal@ (it prints to stdout options to give to `cabal` to use the obtained `ghc`.\nOptions are escaped so that they can sent to the `xargs` POSIX utility).\n* @vabal show@ (it works like @vabal@ but prints\nthe version of the obtained `ghc` to stdout instead of options to pass to `cabal`).\n\nSee the README for more detailed informations.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "vabal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."vabal-lib" or (errorHandler.buildDepError "vabal-lib"))
            ];
          buildable = true;
          };
        };
      tests = {
        "xargs-escape-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }