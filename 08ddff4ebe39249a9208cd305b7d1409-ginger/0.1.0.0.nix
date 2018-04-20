{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ginger";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "tdammers@gmail.com";
        author = "Tobias Dammers";
        homepage = "https://bitbucket.org/tdammers/ginger";
        url = "";
        synopsis = "An implementation of the Jinja2 template language in Haskell";
        description = "";
        buildType = "Simple";
      };
      components = {
        ginger = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.data-default
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.safe
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        exes = {
          ginger = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.data-default
              hsPkgs.ginger
              hsPkgs.aeson
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }