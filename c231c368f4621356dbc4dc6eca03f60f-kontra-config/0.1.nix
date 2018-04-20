{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "kontra-config";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Scrive AB";
        maintainer = "Gracjan Polak <gracjan@scrive.com>, Jonathan Jouty <jonathan@scrive.com>, Mikhail Glushenkov <mikhail@scrive.com>";
        author = "Scrive AB";
        homepage = "https://github.com/scrive/kontra-config";
        url = "";
        synopsis = "JSON config file parsing based on unjson";
        description = "A library for reading JSON configuration files. Based on unjson.";
        buildType = "Simple";
      };
      components = {
        kontra-config = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers-base
            hsPkgs.data-default
            hsPkgs.exceptions
            hsPkgs.bytestring
            hsPkgs.utf8-string
            hsPkgs.text
            hsPkgs.unjson
            hsPkgs.yaml
          ];
        };
      };
    }