{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "ceilometer-common";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "© 2015 Anchor Systems, Pty Ltd and Others";
        maintainer = "Anchor Engineering <engineering@anchor.com.au>";
        author = "Anchor Engineering <engineering@anchor.com.au>";
        homepage = "https://github.com/anchor/ceilometer-common";
        url = "";
        synopsis = "Common Haskell types and encoding for ceilometer";
        description = "Provides a set of common types for use with ceilometer related packages.";
        buildType = "Simple";
      };
      components = {
        "ceilometer-common" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bimap
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.foldl
            hsPkgs.lens
            hsPkgs.pipes
            hsPkgs.siphash
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.vaultaire-common
          ];
        };
        tests = {
          "unit" = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.bimap
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.foldl
              hsPkgs.hspec
              hsPkgs.lens
              hsPkgs.lens-properties
              hsPkgs.mtl
              hsPkgs.pipes
              hsPkgs.siphash
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.vaultaire-common
              hsPkgs.data-ordlist
            ];
          };
        };
      };
    }