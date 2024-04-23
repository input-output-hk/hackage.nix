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
      identifier = { name = "universe-reverse-instances"; version = "1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Daniel Wagner 2014";
      maintainer = "me@dmwit.com";
      author = "Daniel Wagner";
      homepage = "https://github.com/dmwit/universe";
      url = "";
      synopsis = "Instances of standard classes that are made possible by enumerations";
      description = "For example this package provides a @Eq (a -> b)@ instance:\n\n@\ninstance (Finite a, Eq b) => Eq (a -> b) where\nf == g = and [f x == g x | x <- universeF]\n@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."universe-base" or (errorHandler.buildDepError "universe-base"))
        ];
        buildable = true;
      };
    };
  }