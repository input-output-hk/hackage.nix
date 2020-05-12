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
      identifier = { name = "cabal-test-bin"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "junji.hashimoto@gmail.com";
      author = "Junji Hashimoto";
      homepage = "";
      url = "";
      synopsis = "A program for finding temporary build file during cabal-test.";
      description = "cabal-test-bin finds exe-file for\n> cabal install --enable-tests --run-tests\nand\n> cabal test\n\nWhen a project uses cabal-sandbox, cabal-test-bin checks both\n> <project root>/dist/dist-sandbox-<hash>/build/<exe-file>/<exe-file>\nand\n> <project root>/dist/build/<exe-file>/<exe-file>\n";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cabal-test-bin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }