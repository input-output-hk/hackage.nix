{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fluid-idl";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Joe Vargas";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Fluid | The Programmatic IDL";
        description = "Fluid | The Programmatic IDL";
        buildType = "Simple";
      };
      components = {
        fluid-idl = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.errors
            hsPkgs.exceptions
            hsPkgs.lifted-async
            hsPkgs.monad-control
            hsPkgs.monad-logger
            hsPkgs.mtl
            hsPkgs.random
            hsPkgs.scientific
            hsPkgs.safe-exceptions
            hsPkgs.text
            hsPkgs.text-conversions
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        tests = {
          fluid-suite = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.fluid
              hsPkgs.containers
              hsPkgs.hspec
              hsPkgs.scientific
              hsPkgs.text
              hsPkgs.tuple
              hsPkgs.vector
            ];
          };
        };
      };
    }