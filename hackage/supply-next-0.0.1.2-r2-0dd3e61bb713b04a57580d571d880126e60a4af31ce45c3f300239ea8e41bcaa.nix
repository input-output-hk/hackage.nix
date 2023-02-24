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
      identifier = { name = "supply-next"; version = "0.0.1.2"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/supply-next";
      url = "";
      synopsis = "Supply-chain interface for basic streaming";
      description = "@Next@ is a supply-chain interface for possibly-finite\nenumeration. The @TerminableStream@ generalizes @Next@\nso that more complex interfaces that incorporate\nenumeration can use some of these utilities. We offer\ntype aliases @Producer@, @Pipe@, and @Consumer@ to\nconveniently describe vendors and jobs that involve a\n@Next@ interface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."gambler" or (errorHandler.buildDepError "gambler"))
          (hsPkgs."integer-types" or (errorHandler.buildDepError "integer-types"))
          (hsPkgs."quaalude" or (errorHandler.buildDepError "quaalude"))
          (hsPkgs."supply-chain" or (errorHandler.buildDepError "supply-chain"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "test-supply-next" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gambler" or (errorHandler.buildDepError "gambler"))
            (hsPkgs."integer-types" or (errorHandler.buildDepError "integer-types"))
            (hsPkgs."quaalude" or (errorHandler.buildDepError "quaalude"))
            (hsPkgs."supply-chain" or (errorHandler.buildDepError "supply-chain"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."supply-next" or (errorHandler.buildDepError "supply-next"))
            ];
          buildable = true;
          };
        };
      };
    }