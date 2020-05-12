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
      identifier = { name = "mueval"; version = "0.9.1.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gwern <gwern@gwern.net>";
      author = "Gwern";
      homepage = "https://github.com/gwern/mueval";
      url = "";
      synopsis = "Safely evaluate pure Haskell expressions";
      description = "Mueval is a Haskell interpreter. It\nuses the GHC API to evaluate arbitrary Haskell expressions.\nImportantly, mueval takes many precautions to defang and avoid \\\"evil\\\"\ncode.  It uses resource limits, whitelisted modules and Safe Haskell,\nspecial Show instances for IO, threads, processes, and changes of directory\nto sandbox the Haskell code.\n\nIt is, in short, intended to be a standalone version of Lambdabot's famous\nevaluation functionality. For examples and explanations, please see the README file.\n\nMueval is POSIX-only.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
          (hsPkgs."show" or (errorHandler.buildDepError "show"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          (hsPkgs."simple-reflect" or (errorHandler.buildDepError "simple-reflect"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      exes = {
        "mueval-core" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "mueval" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }