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
      identifier = { name = "hmatrix-quadprogpp"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alex Lang <me@alang.ca>";
      author = "Alex Lang, Takano Akio";
      homepage = "";
      url = "";
      synopsis = "Bindings to the QuadProg++ quadratic programming library";
      description = "Bindings to QuadProg++, a C++ library for quadratic programming.\n<https://github.com/liuq/QuadProgpp>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
        ];
        libs = [
          (pkgs."quadprog" or (errorHandler.sysDepError "quadprog"))
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
        ];
        buildable = true;
      };
    };
  }