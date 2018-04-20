{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "d-bus";
          version = "0.1.6";
        };
        license = "BSD-3-Clause";
        copyright = "2013-2017 Philipp Balzarek";
        maintainer = "p.balzarek@googlemail.com";
        author = "Philipp Balzarek";
        homepage = "";
        url = "";
        synopsis = "Permissively licensed D-Bus client library";
        description = "This library uses modern extensions to the Haskell type system\n(including GADTs, DataKinds and TypeFamilies) and the\nsingletons library to embedd the D-Bus type system. D-Bus\nsignatures can thus be inferred.";
        buildType = "Simple";
      };
      components = {
        d-bus = {
          depends  = [
            hsPkgs.async
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.containers
            hsPkgs.data-binary-ieee754
            hsPkgs.data-default
            hsPkgs.exceptions
            hsPkgs.free
            hsPkgs.hslogger
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.singletons
            hsPkgs.stm
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.xml-conduit
            hsPkgs.xml-picklers
            hsPkgs.xml-types
          ];
        };
        exes = {
          dbus-introspect = {
            depends  = [
              hsPkgs.base
              hsPkgs.d-bus
              hsPkgs.text
            ];
          };
          liferea-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.d-bus
              hsPkgs.text
            ];
          };
        };
        tests = {
          unittests = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.d-bus
              hsPkgs.mtl
              hsPkgs.singletons
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-th
              hsPkgs.text
              hsPkgs.xml-hamlet
            ];
          };
        };
      };
    }