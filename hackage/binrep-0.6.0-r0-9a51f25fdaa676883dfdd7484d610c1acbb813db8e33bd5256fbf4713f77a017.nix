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
      identifier = { name = "binrep"; version = "0.6.0"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytezap" or (errorHandler.buildDepError "bytezap"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."flatparse" or (errorHandler.buildDepError "flatparse"))
          (hsPkgs."generic-data-asserts" or (errorHandler.buildDepError "generic-data-asserts"))
          (hsPkgs."generic-data-functions" or (errorHandler.buildDepError "generic-data-functions"))
          (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
          (hsPkgs."refined1" or (errorHandler.buildDepError "refined1"))
          (hsPkgs."strongweak" or (errorHandler.buildDepError "strongweak"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (pkgs.lib).optional (flags.icu) (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"));
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binrep" or (errorHandler.buildDepError "binrep"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytezap" or (errorHandler.buildDepError "bytezap"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."flatparse" or (errorHandler.buildDepError "flatparse"))
            (hsPkgs."generic-data-asserts" or (errorHandler.buildDepError "generic-data-asserts"))
            (hsPkgs."generic-data-functions" or (errorHandler.buildDepError "generic-data-functions"))
            (hsPkgs."generic-random" or (errorHandler.buildDepError "generic-random"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."refined1" or (errorHandler.buildDepError "refined1"))
            (hsPkgs."strongweak" or (errorHandler.buildDepError "strongweak"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ] ++ (pkgs.lib).optional (flags.icu) (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"));
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binrep" or (errorHandler.buildDepError "binrep"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytezap" or (errorHandler.buildDepError "bytezap"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."flatparse" or (errorHandler.buildDepError "flatparse"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."generic-data-asserts" or (errorHandler.buildDepError "generic-data-asserts"))
            (hsPkgs."generic-data-functions" or (errorHandler.buildDepError "generic-data-functions"))
            (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
            (hsPkgs."refined1" or (errorHandler.buildDepError "refined1"))
            (hsPkgs."strongweak" or (errorHandler.buildDepError "strongweak"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ] ++ (pkgs.lib).optional (flags.icu) (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"));
          buildable = true;
          };
        };
      };
    }