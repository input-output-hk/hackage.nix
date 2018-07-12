{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "bindings-hdf5";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Maurício C. Antunes";
        author = "Maurício C. Antunes";
        homepage = "";
        url = "";
        synopsis = "Project bindings-* raw interface to HDF5 library";
        description = "Low level bindings to HDF5, part\nof the @bindings-*@ project. See:\n\n<http://bitbucket.org/mauricio/bindings-dsl>\n\n<http://www.hdfgroup.org/HDF5>";
        buildType = "Configure";
      };
      components = {
        "bindings-hdf5" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-DSL
          ];
        };
      };
    }