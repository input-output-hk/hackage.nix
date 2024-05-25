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
      identifier = { name = "applicative-logic"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lyesveasp@openbastille.org";
      author = "Håkon Robbestad Gylterud";
      homepage = "http://hakon.gylterud.net/programming/applicative-logic";
      url = "";
      synopsis = "Generalized logic operations for Applicative and Alternative functors";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }