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
      identifier = { name = "concurrent-barrier"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeremy@goop.org";
      author = "Jeremy Fitzhardinge";
      homepage = "https://github.com/jsgf/concurrent-barrier";
      url = "";
      synopsis = "Simple thread barriers";
      description = "A very simple package providing thread barriers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }