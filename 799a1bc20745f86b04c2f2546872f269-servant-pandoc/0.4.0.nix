{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-pandoc";
          version = "0.4.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "matthewtpickering@gmail.com";
        author = "Matthew Pickering";
        homepage = "";
        url = "";
        synopsis = "Use Pandoc to render servant API documentation";
        description = "See <https://github.com/mpickering/servant-pandoc/blob/master/README.md README>.";
        buildType = "Simple";
      };
      components = {
        servant-pandoc = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-media
            hsPkgs.lens
            hsPkgs.pandoc-types
            hsPkgs.servant-docs
            hsPkgs.unordered-containers
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.semigroupoids
          ];
        };
      };
    }