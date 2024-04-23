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
      specVersion = "1.6";
      identifier = { name = "elf"; version = "0.28"; };
      license = "BSD-3-Clause";
      copyright = "Erik Charlebois";
      maintainer = "Baojun Wang <wangbj@gmail.com>";
      author = "Erik Charlebois";
      homepage = "https://github.com/wangbj/elf";
      url = "";
      synopsis = "Parser for ELF object format.";
      description = "Parser for ELF object format.";
      buildType = "Custom";
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
    };
  }