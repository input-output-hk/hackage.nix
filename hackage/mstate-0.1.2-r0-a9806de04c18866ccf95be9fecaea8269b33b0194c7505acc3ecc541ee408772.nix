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
      specVersion = "1.6";
      identifier = { name = "mstate"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<mail@n-sch.de>";
      author = "Nils Schweinsberg";
      homepage = "";
      url = "";
      synopsis = "MState: A consistent State monad for concurrent applications.";
      description = "MState offers a State monad which can be used in concurrent\napplications. It also manages new threads and waits until the\nwhole state monad has been evaluated/executed before it returns\nthe state values.";
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