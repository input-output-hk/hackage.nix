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
      specVersion = "3.0";
      identifier = { name = "choice"; version = "0.2.4.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "m@boespfl.ug";
      author = "Mathieu Boespflug";
      homepage = "https://github.com/mboes/choice#readme";
      url = "";
      synopsis = "A solution to boolean blindness.";
      description = "Please see README.md.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }