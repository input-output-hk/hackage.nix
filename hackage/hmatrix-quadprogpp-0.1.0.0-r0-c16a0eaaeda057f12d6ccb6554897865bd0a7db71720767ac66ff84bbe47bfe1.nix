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
      identifier = { name = "hmatrix-quadprogpp"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alex Lang <me@alang.ca>";
      author = "Alex Lang, Takano Akio";
      homepage = "";
      url = "";
      synopsis = "Bindings to QuadProg++";
      description = "Bindings to QuadProg++, a C++ library for quadratic programming.\n<http://sourceforge.net/projects/quadprog/>";
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
          (pkgs."QuadProgpp" or (errorHandler.sysDepError "QuadProgpp"))
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
          ];
        buildable = true;
        };
      };
    }