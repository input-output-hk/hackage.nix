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
      identifier = { name = "language-java-classfile"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gergő Érdi <gergo@erdi.hu>";
      author = "Gergő Érdi <http://gergo.erdi.hu/>";
      homepage = "";
      url = "";
      synopsis = "Parser for Java .class files";
      description = "Parses compiled Java .class files into the syntax tree\nof the language-java package";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."language-java" or (errorHandler.buildDepError "language-java"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."data-flags" or (errorHandler.buildDepError "data-flags"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-binary-ieee754" or (errorHandler.buildDepError "data-binary-ieee754"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."LibZip" or (errorHandler.buildDepError "LibZip"))
          ];
        buildable = true;
        };
      };
    }