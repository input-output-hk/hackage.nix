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
      identifier = { name = "HaTeX"; version = "3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daniel Díaz (danieldiaz <at> dhelta <dot> net)";
      author = "Daniel Díaz";
      homepage = "http://dhelta.net/hprojects/HaTeX";
      url = "";
      synopsis = "LaTeX code writer.";
      description = "HaTeX consists in a set of combinators which allow you to build LaTeX code,\nfollowing the LaTeX syntax in a type-safe manner.\n\nThis allows you to build programs which generates LaTeX code automatically\nfor any purpose you can figure out.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }