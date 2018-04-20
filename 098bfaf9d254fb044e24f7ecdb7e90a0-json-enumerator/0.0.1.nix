{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "json-enumerator";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michaels@suite-sol.com>";
        author = "Michael Snoyman <michaels@suite-sol.com>";
        homepage = "http://github.com/snoyberg/json-enumerator";
        url = "";
        synopsis = "Pure-Haskell utilities for dealing with JSON with the enumerator package.";
        description = "Provides the ability to render JSON in a streaming manner using the enumerator package.";
        buildType = "Simple";
      };
      components = {
        json-enumerator = {
          depends  = [
            hsPkgs.base
            hsPkgs.enumerator
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.json-types
            hsPkgs.blaze-builder
            hsPkgs.blaze-builder-enumerator
            hsPkgs.transformers
          ];
        };
      };
    }