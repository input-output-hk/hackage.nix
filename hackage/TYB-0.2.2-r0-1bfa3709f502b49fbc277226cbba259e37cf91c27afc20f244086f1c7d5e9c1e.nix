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
      identifier = { name = "TYB"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas M. DuBuisson <thomas.dubuisson@gmail.com>";
      author = "Michael D. Adams, Thomas M. DuBuisson";
      homepage = "";
      url = "";
      synopsis = "Template Your Boilerplate - a Template Haskell version of SYB";
      description = "TYB is a generic-programming system that uses Template\nHaskell to generate boiler-plate traversals at compile\ntime.  This results in significantly improved\nperformance.  The paper documenting it is available at:\n<http://cs.pdx.edu/~adamsmic/projects/tyb/TYB.pdf>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }