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
      specVersion = "2.4";
      identifier = { name = "aftovolio"; version = "0.7.0.0"; };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "oleksandr.zhabenko@yahoo.com";
      author = "Oleksandr Zhabenko";
      homepage = "";
      url = "";
      synopsis = "An AFTOVolio implementation for creating texts with special phonetic / prosodic properties.";
      description = "It is another project that is based on the similar ideas as [phonetic-languages-simplified-examples-array package](https://hackage.haskell.org/package/phonetic-languages-simplified-examples-array). It combines general functionality with an example of complete one for Ukrainian language with extended documentation, mostly in the README.md file. ";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."rhythmic-sequences" or (errorHandler.buildDepError "rhythmic-sequences"))
          (hsPkgs."cli-arguments" or (errorHandler.buildDepError "cli-arguments"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."rev-scientific" or (errorHandler.buildDepError "rev-scientific"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."mmsyn2-array" or (errorHandler.buildDepError "mmsyn2-array"))
          (hsPkgs."minmax" or (errorHandler.buildDepError "minmax"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."monoid-insertleft" or (errorHandler.buildDepError "monoid-insertleft"))
          (hsPkgs."intermediate-structures" or (errorHandler.buildDepError "intermediate-structures"))
          (hsPkgs."quantizer" or (errorHandler.buildDepError "quantizer"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lists-flines" or (errorHandler.buildDepError "lists-flines"))
          (hsPkgs."uniqueness-periods-vector-stats" or (errorHandler.buildDepError "uniqueness-periods-vector-stats"))
        ];
        buildable = true;
      };
      exes = {
        "aftovolioUkr" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rhythmic-sequences" or (errorHandler.buildDepError "rhythmic-sequences"))
            (hsPkgs."cli-arguments" or (errorHandler.buildDepError "cli-arguments"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."rev-scientific" or (errorHandler.buildDepError "rev-scientific"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."mmsyn2-array" or (errorHandler.buildDepError "mmsyn2-array"))
            (hsPkgs."minmax" or (errorHandler.buildDepError "minmax"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."monoid-insertleft" or (errorHandler.buildDepError "monoid-insertleft"))
            (hsPkgs."intermediate-structures" or (errorHandler.buildDepError "intermediate-structures"))
            (hsPkgs."quantizer" or (errorHandler.buildDepError "quantizer"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."lists-flines" or (errorHandler.buildDepError "lists-flines"))
            (hsPkgs."uniqueness-periods-vector-stats" or (errorHandler.buildDepError "uniqueness-periods-vector-stats"))
          ];
          buildable = true;
        };
        "unconcatUkr2" = {
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