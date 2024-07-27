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
    flags = { icu = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "binrep"; version = "0.5.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Orchard <thefirstmuffinman@gmail.com>";
      author = "Ben Orchard";
      homepage = "https://github.com/raehik/binrep#readme";
      url = "";
      synopsis = "Encode precise binary representations directly in types";
      description = "Please see README.md.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."flatparse" or (errorHandler.buildDepError "flatparse"))
          (hsPkgs."generic-data-functions" or (errorHandler.buildDepError "generic-data-functions"))
          (hsPkgs."mason" or (errorHandler.buildDepError "mason"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
          (hsPkgs."refined1" or (errorHandler.buildDepError "refined1"))
          (hsPkgs."strongweak" or (errorHandler.buildDepError "strongweak"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
        ] ++ pkgs.lib.optional (flags.icu) (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"));
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binrep" or (errorHandler.buildDepError "binrep"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."flatparse" or (errorHandler.buildDepError "flatparse"))
            (hsPkgs."generic-data-functions" or (errorHandler.buildDepError "generic-data-functions"))
            (hsPkgs."generic-random" or (errorHandler.buildDepError "generic-random"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mason" or (errorHandler.buildDepError "mason"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."refined1" or (errorHandler.buildDepError "refined1"))
            (hsPkgs."strongweak" or (errorHandler.buildDepError "strongweak"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
          ] ++ pkgs.lib.optional (flags.icu) (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"));
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binrep" or (errorHandler.buildDepError "binrep"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."flatparse" or (errorHandler.buildDepError "flatparse"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."generic-data-functions" or (errorHandler.buildDepError "generic-data-functions"))
            (hsPkgs."mason" or (errorHandler.buildDepError "mason"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
            (hsPkgs."refined1" or (errorHandler.buildDepError "refined1"))
            (hsPkgs."strongweak" or (errorHandler.buildDepError "strongweak"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
          ] ++ pkgs.lib.optional (flags.icu) (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"));
          buildable = true;
        };
      };
    };
  }