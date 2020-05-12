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
      specVersion = "1.8";
      identifier = { name = "Frank"; version = "0.3"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "conor@strictlypositive.org";
      author = "Conor McBride";
      homepage = "http://personal.cis.strath.ac.uk/~conor/pub/Frank/";
      url = "";
      synopsis = "An experimental programming language with typed algebraic effects";
      description = "An experimental programming language with typed algebraic effects";
      buildType = "Simple";
      };
    components = {
      exes = {
        "frank" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."void" or (errorHandler.buildDepError "void"))
            (hsPkgs."newtype" or (errorHandler.buildDepError "newtype"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."she" or (errorHandler.buildDepError "she"))
            ];
          buildable = true;
          };
        };
      };
    }