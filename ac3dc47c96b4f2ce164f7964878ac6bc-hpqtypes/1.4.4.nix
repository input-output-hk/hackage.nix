{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      tests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hpqtypes";
          version = "1.4.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Andrzej Rybczak <andrzej@scrive.com>";
        author = "Scrive";
        homepage = "https://github.com/scrive/hpqtypes";
        url = "";
        synopsis = "Haskell bindings to libpqtypes";
        description = "Efficient and easy-to-use bindings to (slightly modified)\nlibpqtypes, lipq extension that adds support for binary\ntransport format and composite types.\n\nSince modified libpqtypes is used, its source code is bundled\nalong with the bindings. The differences between verbatim\nlibpqtypes and the one used by this package:\n\n* per-thread global error structures were replaced by explicit\npassing of these structures around so that there is no need\nto use bound threads.\n\n* handlers that take values to be put into the database were\nmodified to always expect pointers to objects, as opposed\nto previous situation where primitives were being taken by\nvalue (which was convenient if the library was used directly\nfrom C, but created inconsistency problems while trying to\ndefine bindings in a sensible way).\n\nExamples can be found in the <https://github.com/scrive/hpqtypes/tree/master/examples examples> directory.";
        buildType = "Custom";
      };
      components = {
        hpqtypes = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.time
            hsPkgs.vector
            hsPkgs.transformers-base
            hsPkgs.monad-control
            hsPkgs.lifted-base
            hsPkgs.resource-pool
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.containers
            hsPkgs.exceptions
            hsPkgs.data-default-class
          ];
          libs = [ pkgs.pq ];
        };
        exes = {
          tests = {
            depends  = [
              hsPkgs.hpqtypes
              hsPkgs.base
              hsPkgs.text
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.time
              hsPkgs.transformers-base
              hsPkgs.monad-control
              hsPkgs.lifted-base
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.random
              hsPkgs.exceptions
              hsPkgs.scientific
              hsPkgs.unordered-containers
              hsPkgs.vector
            ];
          };
        };
      };
    }