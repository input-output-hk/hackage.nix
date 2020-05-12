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
      specVersion = "0";
      identifier = { name = "traced"; version = "2009.4.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Lennart Augustsson";
      author = "Lennart Augustsson";
      homepage = "";
      url = "";
      synopsis = "Simple evaluation trace";
      description = "The module defines a type constructor Traced, which allows evaluation\nof values to be traced.  Instances for all numeric types make tracing\nnumeric evaluation especially easy.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }