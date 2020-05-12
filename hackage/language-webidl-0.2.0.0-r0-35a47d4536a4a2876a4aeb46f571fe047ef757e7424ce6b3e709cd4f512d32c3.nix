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
      identifier = { name = "language-webidl"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2016, Zhen Zhang";
      maintainer = "Zhen Zhang <izgzhen@gmail.com>";
      author = "Zhen Zhang <izgzhen@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Parser and Pretty Printer for WebIDL";
      description = "Written with parsec and wl-pprint. Functor AST.\nReusable node parser.\nSee <http://www.w3.org/TR/WebIDL/> for reference.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."wl-pprint" or (errorHandler.buildDepError "wl-pprint"))
          ];
        buildable = true;
        };
      tests = {
        "language-webidl-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."language-webidl" or (errorHandler.buildDepError "language-webidl"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }