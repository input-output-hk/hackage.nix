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
      identifier = {
        name = "casadi-bindings-ipopt-interface";
        version = "1.9.0.2";
        };
      license = "LGPL-3.0-only";
      copyright = "(c) 2013-2014 Greg Horn";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "low level bindings to casadi-ipopt_interface";
      description = "see <http://hackage.haskell.org/package/casadi-bindings http://hackage.haskell.org/package/casadi-bindings> for all instructions";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."casadi-bindings-core" or (errorHandler.buildDepError "casadi-bindings-core"))
          (hsPkgs."casadi-bindings-internal" or (errorHandler.buildDepError "casadi-bindings-internal"))
          ];
        libs = [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
        pkgconfig = [
          (pkgconfPkgs."casadi_ipopt_interface" or (errorHandler.pkgConfDepError "casadi_ipopt_interface"))
          ];
        buildable = true;
        };
      };
    }