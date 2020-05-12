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
      specVersion = "1.2.1";
      identifier = { name = "HSvm"; version = "0.1.0.2.89"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Paolo Losi";
      maintainer = "Paolo Losi <paolo.losi@gmail.com>";
      author = "Paolo Losi <paolo.losi@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Haskell Bindings for libsvm ";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        libs = [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
        buildable = true;
        };
      };
    }