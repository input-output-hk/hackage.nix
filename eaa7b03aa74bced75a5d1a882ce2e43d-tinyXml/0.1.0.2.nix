{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      debug = false;
    } // flags;
    in {
      package = {
        specVersion = "1.22";
        identifier = {
          name = "tinyXml";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "pepeiborra@gmail.com";
        author = "Pepe Iborra";
        homepage = "";
        url = "";
        synopsis = "A fast DOM parser for a subset of XML";
        description = "Fast DOM parser for XML with no support for entities, CDATA sections nor namespaces.";
        buildType = "Simple";
      };
      components = {
        tinyXml = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.vector
            hsPkgs.primitive
          ];
        };
        exes = {
          validate = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.tinyXml
              hsPkgs.mtl
              hsPkgs.optparse-generic
              hsPkgs.directory
              hsPkgs.filepath
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.tinyXml
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.vector
              hsPkgs.hexml
              hsPkgs.filepath
              hsPkgs.primitive
              hsPkgs.process
            ];
          };
        };
      };
    }