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
      specVersion = "1.0";
      identifier = { name = "cmath"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008. Don Stewart <dons@galois.com>";
      maintainer = "Don Stewart <dons@galois.com>";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/cmath";
      url = "";
      synopsis = "A small binding to the standard C math library";
      description = "A small binding to the standard C math library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [ (pkgs."m" or (errorHandler.sysDepError "m")) ];
        buildable = true;
      };
    };
  }