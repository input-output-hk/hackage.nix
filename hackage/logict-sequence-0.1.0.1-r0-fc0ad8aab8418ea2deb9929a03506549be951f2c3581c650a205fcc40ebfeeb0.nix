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
      identifier = { name = "logict-sequence"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "(c) 2021 Jason Dagit,\n(c) 2014 Atze van der Ploeg";
      maintainer = "Jason dagit <dagitj@gmail.com>";
      author = "Jason Dagit";
      homepage = "https://github.com/dagit/logict-sequence";
      url = "";
      synopsis = "A backtracking logic-programming monad with asymptotic improvements to msplit";
      description = "Adapted from the paper\n<http://okmij.org/ftp/Haskell/zseq.pdf>\nby Atze van der Ploeg and Oleg Kiselyov";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."type-aligned" or (errorHandler.buildDepError "type-aligned"))
          (hsPkgs."sequence" or (errorHandler.buildDepError "sequence"))
          (hsPkgs."logict" or (errorHandler.buildDepError "logict"))
        ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.lt "8.0") [
          (hsPkgs."fail" or (errorHandler.buildDepError "fail"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }