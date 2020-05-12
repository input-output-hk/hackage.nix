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
      identifier = { name = "elf"; version = "0.30"; };
      license = "BSD-3-Clause";
      copyright = "Erik Charlebois";
      maintainer = "Baojun Wang <wangbj@gmail.com>";
      author = "Erik Charlebois";
      homepage = "https://github.com/wangbj/elf";
      url = "";
      synopsis = "An Elf parser";
      description = "Parser for ELF object format.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."elf" or (errorHandler.buildDepError "elf"))
            ];
          buildable = true;
          };
        };
      };
    }