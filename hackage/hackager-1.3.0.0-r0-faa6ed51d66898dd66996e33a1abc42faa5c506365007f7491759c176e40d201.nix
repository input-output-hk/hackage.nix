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
      identifier = { name = "hackager"; version = "1.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "David Terei <code@davidterei.com>";
      author = "The GHC Team, David Terei <code@davidterei.com>";
      homepage = "https://github.com/dterei/Hackager";
      url = "";
      synopsis = "Hackage testing tool";
      description = "Hackager is a program for compiling the entirety of Hackage as a way of\ntesting a Haskell compiler.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hackager" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            ];
          buildable = true;
          };
        };
      };
    }