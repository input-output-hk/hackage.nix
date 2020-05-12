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
      identifier = { name = "bindings-hdf5"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John Wiegley <johnw@newartisans.com>";
      author = "Maurício C. Antunes";
      homepage = "";
      url = "";
      synopsis = "Project bindings-* raw interface to HDF5 library";
      description = "Low level bindings to HDF5, part\nof the @bindings-*@ project. See:\n\n<https://github.com/jwiegley/bindings-dsl>\n\n<http://www.hdfgroup.org/HDF5>";
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