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
      identifier = { name = "reorder-expression"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "(c) 2021- comp";
      maintainer = "onecomputer00@gmail.com";
      author = "comp";
      homepage = "https://github.com/1Computer1/reorder-expression";
      url = "";
      synopsis = "Reorder expressions in a syntax tree according to operator fixities.";
      description = "A library for reordering expressions in a syntax tree generically according to operator associativity and precedence.\nThis is useful for languages with custom operators which require reordering expressions after collecting their fixities.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "reorder-expression-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."reorder-expression" or (errorHandler.buildDepError "reorder-expression"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."optics" or (errorHandler.buildDepError "optics"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }