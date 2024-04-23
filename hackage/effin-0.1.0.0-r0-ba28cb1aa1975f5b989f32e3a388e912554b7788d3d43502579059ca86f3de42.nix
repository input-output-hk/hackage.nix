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
    flags = { mtl = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "effin"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Anthony Vandikas";
      maintainer = "yellpika@gmail.com";
      author = "Anthony Vandikas";
      homepage = "https://github.com/YellPika/effin";
      url = "";
      synopsis = "A Typeable-free implementation of extensible effects";
      description = "A Typeable-free implementation of extensible effects";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ pkgs.lib.optional (flags.mtl) (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"));
        buildable = true;
      };
    };
  }