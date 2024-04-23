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
    flags = { split-these = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "patch"; version = "0.0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "maintainer@obsidian.systems";
      author = "Ryan Trinkle";
      homepage = "https://obsidian.systems";
      url = "";
      synopsis = "Infrastructure for writing patches which act on other types.";
      description = "In this library, a patch is something which can be applied, analogous to a\nfunction, and which distinguishes returning the argument it was provided from\nreturning something else.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints-extras" or (errorHandler.buildDepError "constraints-extras"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dependent-map" or (errorHandler.buildDepError "dependent-map"))
          (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
        ] ++ (if flags.split-these
          then [
            (hsPkgs."these" or (errorHandler.buildDepError "these"))
            (hsPkgs."semialign" or (errorHandler.buildDepError "semialign"))
            (hsPkgs."monoidal-containers" or (errorHandler.buildDepError "monoidal-containers"))
          ]
          else [
            (hsPkgs."these" or (errorHandler.buildDepError "these"))
            (hsPkgs."monoidal-containers" or (errorHandler.buildDepError "monoidal-containers"))
          ]);
        buildable = true;
      };
      tests = {
        "hlint" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
            (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
          ];
          buildable = if compiler.isGhcjs && true then false else true;
        };
      };
    };
  }