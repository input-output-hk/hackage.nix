{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gitdo";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "matthew@quickbeam.me.uk";
        author = "Matthew Hall";
        homepage = "https://github.com/mattyhall/gitdo";
        url = "";
        synopsis = "Create Github issues out of TODO comments in code";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          "gitdo" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.aeson-lens
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.foldl
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.optparse-applicative
              hsPkgs.sqlite-simple
              hsPkgs.system-filepath
              hsPkgs.text
              hsPkgs.turtle
              hsPkgs.wreq
            ];
          };
        };
      };
    }