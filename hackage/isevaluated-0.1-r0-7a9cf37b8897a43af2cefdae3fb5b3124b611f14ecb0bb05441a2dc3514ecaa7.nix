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
      identifier = { name = "isevaluated"; version = "0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "svein.ove@aas.no";
      author = "Svein Ove Aas";
      homepage = "";
      url = "";
      synopsis = "Check whether a value has been evaluated";
      description = "An IO action to check whether some value has been evaluated.\n\nIf isEvaluated returns True, evaluating it to weak-head\nnormal form won't throw exceptions or take time.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          ];
        buildable = true;
        };
      };
    }