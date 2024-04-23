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
      identifier = {
        name = "phonetic-languages-ukrainian-array";
        version = "0.12.2.0";
      };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "oleksandr.zhabenko@yahoo.com";
      author = "Oleksandr Zhabenko";
      homepage = "https://hackage.haskell.org/package/phonetic-languages-ukrainian-array";
      url = "";
      synopsis = "Prepares Ukrainian text to be used as a PhLADiPreLiO text";
      description = "Applies needed minimal grammar connections so that the text afterwards can be processed PhLADiPreLiO related programs. Besides can be used to reverse many of the done concatenations.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mmsyn2-array" or (errorHandler.buildDepError "mmsyn2-array"))
          (hsPkgs."intermediate-structures" or (errorHandler.buildDepError "intermediate-structures"))
        ];
        buildable = true;
      };
      exes = {
        "unconcatUkr" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mmsyn2-array" or (errorHandler.buildDepError "mmsyn2-array"))
            (hsPkgs."intermediate-structures" or (errorHandler.buildDepError "intermediate-structures"))
          ];
          buildable = true;
        };
      };
    };
  }