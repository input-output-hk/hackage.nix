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
      specVersion = "1.12";
      identifier = { name = "shake-plus-extended"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2020 Daniel Firth";
      maintainer = "dan.firth@homotopic.tech";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "Experimental extensions to shake-plus";
      description = "Experimental extensions to shake-plus - `within`-style file rules, HashMap and IxSet batch loaders.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."ixset-typed" or (errorHandler.buildDepError "ixset-typed"))
          (hsPkgs."ixset-typed-binary-instance" or (errorHandler.buildDepError "ixset-typed-binary-instance"))
          (hsPkgs."ixset-typed-hashable-instance" or (errorHandler.buildDepError "ixset-typed-hashable-instance"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."path-binary-instance" or (errorHandler.buildDepError "path-binary-instance"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
          (hsPkgs."shake-plus" or (errorHandler.buildDepError "shake-plus"))
          (hsPkgs."within" or (errorHandler.buildDepError "within"))
          ];
        buildable = true;
        };
      };
    }