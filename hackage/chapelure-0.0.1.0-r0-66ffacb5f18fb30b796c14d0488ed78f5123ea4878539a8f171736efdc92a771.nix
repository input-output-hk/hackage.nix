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
      specVersion = "3.0";
      identifier = { name = "chapelure"; version = "0.0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Hécate Moonlight";
      author = "Hécate Moonlight";
      homepage = "https://github.com/haskell-chapelure/chapelure#readme";
      url = "";
      synopsis = "A diagnostics library for Haskell";
      description = "Chapelure is a diagnostics library for Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."nonempty-vector" or (errorHandler.buildDepError "nonempty-vector"))
          (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-display" or (errorHandler.buildDepError "text-display"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."hsluv-haskell" or (errorHandler.buildDepError "hsluv-haskell"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
        ];
        buildable = true;
      };
      tests = {
        "chapelure-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."chapelure" or (errorHandler.buildDepError "chapelure"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."nonempty-vector" or (errorHandler.buildDepError "nonempty-vector"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."string-qq" or (errorHandler.buildDepError "string-qq"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }