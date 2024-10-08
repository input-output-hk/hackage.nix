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
      identifier = { name = "brainfuck"; version = "0.1.0.4"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Nikolay Amiantov <ab@fmap.me>";
      author = "Jason Dagit <dagit@codersbase.com>";
      homepage = "";
      url = "";
      synopsis = "Brainfuck interpreter";
      description = "This is an interpreter of the brainf*ck language,\nwritten in the pure, lazy, functional language Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      exes = {
        "bf" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."brainfuck" or (errorHandler.buildDepError "brainfuck"))
          ];
          buildable = true;
        };
      };
    };
  }