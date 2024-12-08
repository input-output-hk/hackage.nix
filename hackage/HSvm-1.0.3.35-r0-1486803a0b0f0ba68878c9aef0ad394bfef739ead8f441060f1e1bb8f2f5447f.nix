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
      identifier = { name = "HSvm"; version = "1.0.3.35"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Paolo Losi, 2017 Pavel Ryzhov";
      maintainer = "Pavel Ryzhov <paul@paulrz.cz>";
      author = "Paolo Losi <paolo.losi@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Haskell Bindings for libsvm";
      description = "The library embeds libsvm and provides a type-safe interface into SVM models.";
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