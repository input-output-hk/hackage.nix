{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "beeminder-api";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2013 Daniel Wagner";
        maintainer = "greenrd@greenrd.org";
        author = "Daniel Wagner";
        homepage = "";
        url = "";
        synopsis = "Bindings to the beeminder.com JSON API";
        description = "<<https://www.beeminder.com/images/logo_hi.png>>\n\n<http://beeminder.com> is a tool for incentivizing yourself to\naccomplish your quantifiable goals.  This package\nprovides Haskell bindings to beeminder's JSON API.";
        buildType = "Simple";
      };
      components = {
        beeminder-api = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.aeson
            hsPkgs.scientific
            hsPkgs.attoparsec
            hsPkgs.conduit
            hsPkgs.data-default-class
            hsPkgs.data-default-instances-base
            hsPkgs.http-conduit
            hsPkgs.vector
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.bytestring
            hsPkgs.blaze-builder
            hsPkgs.http-types
            hsPkgs.universe
            hsPkgs.universe-base
            hsPkgs.time
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.lens
            hsPkgs.monad-control
            hsPkgs.resourcet
          ];
        };
      };
    }