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
    flags = { use-undecidable-instances = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "tardis"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "danburton.email@gmail.com";
      author = "Dan Burton";
      homepage = "https://github.com/DanBurton/tardis";
      url = "";
      synopsis = "Bidirectional state monad transformer";
      description = "A Tardis is a combination of both a forwards and a backwards\nstate transformer, providing two state values that \\\"travel\\\"\nin opposite directions.\n\nYou can install this library with the @use-undecidable-instances@ flag,\nbut this feature is only provided for toying around.\nIf you depend on this library, or install any libraries that\ndepend on this library, then you should install this library /without/\nthat flag.\n\nA detailed description of what a Tardis is and how to use it\ncan be found in the documentation for Control.Monad.Tardis.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }