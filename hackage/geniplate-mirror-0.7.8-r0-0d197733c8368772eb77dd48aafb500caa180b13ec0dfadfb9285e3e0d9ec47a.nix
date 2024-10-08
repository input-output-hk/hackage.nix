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
      identifier = { name = "geniplate-mirror"; version = "0.7.8"; };
      license = "BSD-3-Clause";
      copyright = "2014-2015 Lennart Augustsson";
      maintainer = "Dan Rosén <dan.rosen@gu.se>, Liang-Ting Chen <liang.ting.chen.tw@gmail.com>";
      author = "Lennart Augustsson";
      homepage = "https://github.com/danr/geniplate";
      url = "";
      synopsis = "Use Template Haskell to generate Uniplate-like functions.";
      description = "Use Template Haskell to generate Uniplate-like functions.\n\nThis is a maintained mirror of the\n<http://hackage.haskell.org/package/geniplate geniplate> package,\nwritten by Lennart Augustsson.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }