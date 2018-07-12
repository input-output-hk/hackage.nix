{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "zlib-lens";
          version = "0.1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(C) 2014 Edward Kmett and Eric Mertens";
        maintainer = "Edward Kmett <ekmett@gmail.com>";
        author = "Edward Kmett and Eric Mertens";
        homepage = "http://lens.github.io/";
        url = "";
        synopsis = "Lenses for zlib";
        description = "Lenses for zlib";
        buildType = "Simple";
      };
      components = {
        "zlib-lens" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.zlib
            hsPkgs.profunctors
          ];
        };
      };
    }