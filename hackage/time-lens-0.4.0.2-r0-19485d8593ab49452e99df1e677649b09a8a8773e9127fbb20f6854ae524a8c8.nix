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
      identifier = { name = "time-lens"; version = "0.4.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Roman Cheplyaka <roma@ro-che.info>";
      author = "Roman Cheplyaka";
      homepage = "https://github.com/feuerbach/time-lens";
      url = "";
      synopsis = "Lens-based interface to Data.Time data structures";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-lens-light" or (errorHandler.buildDepError "data-lens-light"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }