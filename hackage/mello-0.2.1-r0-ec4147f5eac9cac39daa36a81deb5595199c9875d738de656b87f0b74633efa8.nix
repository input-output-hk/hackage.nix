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
      identifier = { name = "mello"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2024 Eric Conlon";
      maintainer = "ejconlon@gmail.com";
      author = "Eric Conlon";
      homepage = "https://github.com/ejconlon/mello#readme";
      url = "";
      synopsis = "No-fuss syntax with s-expressions";
      description = "Please see the README on GitHub at <https://github.com/ejconlon/mello#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bowtie" or (errorHandler.buildDepError "bowtie"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
          (hsPkgs."looksee" or (errorHandler.buildDepError "looksee"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."recursion-schemes" or (errorHandler.buildDepError "recursion-schemes"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "mello-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bowtie" or (errorHandler.buildDepError "bowtie"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."daytripper" or (errorHandler.buildDepError "daytripper"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."looksee" or (errorHandler.buildDepError "looksee"))
            (hsPkgs."looksee-trip" or (errorHandler.buildDepError "looksee-trip"))
            (hsPkgs."mello" or (errorHandler.buildDepError "mello"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."prop-unit" or (errorHandler.buildDepError "prop-unit"))
            (hsPkgs."recursion-schemes" or (errorHandler.buildDepError "recursion-schemes"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }