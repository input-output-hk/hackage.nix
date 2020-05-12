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
      specVersion = "2.4";
      identifier = { name = "earcut"; version = "0.1.0.2"; };
      license = "ISC";
      copyright = "ISC";
      maintainer = "lemmih@gmail.com";
      author = "David Himmelstrup";
      homepage = "https://github.com/reanimate/earcut";
      url = "";
      synopsis = "Binding to C++ earcut library.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        libs = [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
        buildable = true;
        };
      };
    }