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
      specVersion = "1.12";
      identifier = { name = "mueval"; version = "0.9.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Terence Ng <stoicism03@gmail.com>";
      author = "Gwern <gwern@gwern.net>";
      homepage = "https://github.com/TerenceNg03/mueval#readme";
      url = "";
      synopsis = "Safely evaluate pure Haskell expressions";
      description = "Mueval is a Haskell interpreter. It uses the GHC API to evaluate arbitrary Haskell expressions. Importantly, mueval takes many precautions to defang and avoid \\\"evil\\\" code.  It uses resource limits, whitelisted modules and Safe Haskell, special Show instances for IO, threads, processes, and changes of directory to sandbox the Haskell code. . It is, in short, intended to be a standalone version of Lambdabot's famous evaluation functionality. For examples and explanations, please see the README file. . Mueval is POSIX-only.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."show" or (errorHandler.buildDepError "show"))
          (hsPkgs."simple-reflect" or (errorHandler.buildDepError "simple-reflect"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ];
        buildable = true;
      };
      exes = {
        "mueval" = {
          depends = [
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."mueval" or (errorHandler.buildDepError "mueval"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."show" or (errorHandler.buildDepError "show"))
            (hsPkgs."simple-reflect" or (errorHandler.buildDepError "simple-reflect"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = true;
        };
      };
      tests = {
        "mueval-test" = {
          depends = [
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."mueval" or (errorHandler.buildDepError "mueval"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."show" or (errorHandler.buildDepError "show"))
            (hsPkgs."simple-reflect" or (errorHandler.buildDepError "simple-reflect"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = true;
        };
      };
    };
  }