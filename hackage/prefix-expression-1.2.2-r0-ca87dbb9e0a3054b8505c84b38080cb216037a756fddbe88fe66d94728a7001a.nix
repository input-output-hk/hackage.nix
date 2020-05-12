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
      identifier = { name = "prefix-expression"; version = "1.2.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: ©  2018 Vonfry";
      maintainer = "vonfry314@gmail.com";
      author = "Vonfry";
      homepage = "https://github.com/VonFry/prefix-expression";
      url = "";
      synopsis = "";
      description = "convert infix to prefix expression";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."regex-pcre-builtin" or (errorHandler.buildDepError "regex-pcre-builtin"))
          ];
        buildable = true;
        };
      tests = {
        "Test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."prefix-expression" or (errorHandler.buildDepError "prefix-expression"))
            ];
          buildable = true;
          };
        };
      };
    }