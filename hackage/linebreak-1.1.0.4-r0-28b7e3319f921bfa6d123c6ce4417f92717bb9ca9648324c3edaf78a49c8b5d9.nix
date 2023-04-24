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
      identifier = { name = "linebreak"; version = "1.1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fa-ml@ariis.it";
      author = "Francesco Ariis";
      homepage = "http://www.ariis.it/static/articles/libraries/page.html#linebreak";
      url = "";
      synopsis = "breaks strings to fit width";
      description = "Simple functions to break a String to fit a maximum text\nwidth, using Knuth-Liang hyphenation algorhitm.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hyphenation" or (errorHandler.buildDepError "hyphenation"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hyphenation" or (errorHandler.buildDepError "hyphenation"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }