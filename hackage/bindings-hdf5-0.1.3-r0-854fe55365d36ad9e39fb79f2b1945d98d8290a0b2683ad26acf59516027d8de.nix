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
      identifier = { name = "bindings-hdf5"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Reto <rethab@protonmail.ch>";
      author = "Maurício C. Antunes";
      homepage = "";
      url = "";
      synopsis = "Project bindings-* raw interface to HDF5 library";
      description = "Low level bindings to HDF5, part\nof the @bindings-*@ project. See:\n\n<https://github.com/rethab/bindings-dsl>\n\n<http://www.hdfgroup.org/HDF5>";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
        ];
        buildable = true;
      };
    };
  }