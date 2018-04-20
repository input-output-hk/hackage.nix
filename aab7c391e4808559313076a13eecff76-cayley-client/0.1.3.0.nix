{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cayley-client";
          version = "0.1.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright © 2015 - Michel Boucey";
        maintainer = "michel.boucey@gmail.com";
        author = "Michel Boucey";
        homepage = "https://github.com/MichelBoucey/cayley-client";
        url = "";
        synopsis = "A Haskell client for the Cayley graph database";
        description = "cayley-client implements the RESTful API of the Cayley graph database.";
        buildType = "Simple";
      };
      components = {
        cayley-client = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.vector
            hsPkgs.http-conduit
            hsPkgs.http-client
            hsPkgs.aeson
            hsPkgs.lens
            hsPkgs.lens-aeson
            hsPkgs.unordered-containers
            hsPkgs.exceptions
          ];
        };
      };
    }