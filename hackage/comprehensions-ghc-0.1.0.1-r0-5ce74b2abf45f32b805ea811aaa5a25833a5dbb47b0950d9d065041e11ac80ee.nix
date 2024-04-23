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
      identifier = { name = "comprehensions-ghc"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 M Farkas-Dyck";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Plugin to generalize comprehensions";
      description = "Add the following to your source file:\n\n> {-# LANGUAGE ApplicativeDo #-}\n> {-# OPTIONS_GHC -fplugin=Comprehension.Plugin #-}\n\nNow all comprehensions have an `Applicative` rather than a `Monad` constraint if possible ☺";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."util" or (errorHandler.buildDepError "util"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."comprehensions-ghc" or (errorHandler.buildDepError "comprehensions-ghc"))
          ];
          buildable = true;
        };
      };
    };
  }