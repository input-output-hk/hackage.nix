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
      identifier = { name = "hyphenation"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2012 Edward A. Kmett\n(C) 2007 Ned Batchelder\n(C) 1990, 2004, 2005 Gerard D.C. Kuiken";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/hyphenation";
      url = "";
      synopsis = "Configurable Knuth-Liang hyphenation";
      description = "Configurable Knuth-Liang hyphenation";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }