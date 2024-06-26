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
      specVersion = "1.2";
      identifier = { name = "termination-combinators"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Max Bolingbroke <batterseapower@hotmail.com>";
      author = "Max Bolingbroke";
      homepage = "http://www.github.com/batterseapower/termination-combinators";
      url = "";
      synopsis = "Termination combinators for forcing non-terminating algorithms to terminate";
      description = "For more information see the paper at http://www.cl.cam.ac.uk/~mb566/papers/termination-combinators-hs11.pdf";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
        ];
        buildable = true;
      };
    };
  }