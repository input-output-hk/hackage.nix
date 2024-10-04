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
      identifier = { name = "binrep"; version = "1.0.0"; };
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
          (hsPkgs."defun-core" or (errorHandler.buildDepError "defun-core"))
          (hsPkgs."flatparse" or (errorHandler.buildDepError "flatparse"))
          (hsPkgs."generic-data-functions" or (errorHandler.buildDepError "generic-data-functions"))
          (hsPkgs."generic-type-asserts" or (errorHandler.buildDepError "generic-type-asserts"))
          (hsPkgs."generic-type-functions" or (errorHandler.buildDepError "generic-type-functions"))
          (hsPkgs."ghc-bignum" or (errorHandler.buildDepError "ghc-bignum"))
          (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
          (hsPkgs."rerefined" or (errorHandler.buildDepError "rerefined"))
          (hsPkgs."strongweak" or (errorHandler.buildDepError "strongweak"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-builder-linear" or (errorHandler.buildDepError "text-builder-linear"))
          (hsPkgs."type-level-bytestrings" or (errorHandler.buildDepError "type-level-bytestrings"))
          (hsPkgs."type-level-show" or (errorHandler.buildDepError "type-level-show"))
        ] ++ pkgs.lib.optional (flags.icu) (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"));
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
            (hsPkgs."defun-core" or (errorHandler.buildDepError "defun-core"))
            (hsPkgs."flatparse" or (errorHandler.buildDepError "flatparse"))
            (hsPkgs."generic-data-functions" or (errorHandler.buildDepError "generic-data-functions"))
            (hsPkgs."generic-random" or (errorHandler.buildDepError "generic-random"))
            (hsPkgs."generic-type-asserts" or (errorHandler.buildDepError "generic-type-asserts"))
            (hsPkgs."generic-type-functions" or (errorHandler.buildDepError "generic-type-functions"))
            (hsPkgs."ghc-bignum" or (errorHandler.buildDepError "ghc-bignum"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."rerefined" or (errorHandler.buildDepError "rerefined"))
            (hsPkgs."strongweak" or (errorHandler.buildDepError "strongweak"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-builder-linear" or (errorHandler.buildDepError "text-builder-linear"))
            (hsPkgs."type-level-bytestrings" or (errorHandler.buildDepError "type-level-bytestrings"))
            (hsPkgs."type-level-show" or (errorHandler.buildDepError "type-level-show"))
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
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binrep" or (errorHandler.buildDepError "binrep"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytezap" or (errorHandler.buildDepError "bytezap"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."defun-core" or (errorHandler.buildDepError "defun-core"))
            (hsPkgs."flatparse" or (errorHandler.buildDepError "flatparse"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."generic-data-functions" or (errorHandler.buildDepError "generic-data-functions"))
            (hsPkgs."generic-type-asserts" or (errorHandler.buildDepError "generic-type-asserts"))
            (hsPkgs."generic-type-functions" or (errorHandler.buildDepError "generic-type-functions"))
            (hsPkgs."ghc-bignum" or (errorHandler.buildDepError "ghc-bignum"))
            (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
            (hsPkgs."rerefined" or (errorHandler.buildDepError "rerefined"))
            (hsPkgs."strongweak" or (errorHandler.buildDepError "strongweak"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-builder-linear" or (errorHandler.buildDepError "text-builder-linear"))
            (hsPkgs."type-level-bytestrings" or (errorHandler.buildDepError "type-level-bytestrings"))
            (hsPkgs."type-level-show" or (errorHandler.buildDepError "type-level-show"))
          ] ++ pkgs.lib.optional (flags.icu) (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"));
          buildable = true;
        };
      };
    };
  }