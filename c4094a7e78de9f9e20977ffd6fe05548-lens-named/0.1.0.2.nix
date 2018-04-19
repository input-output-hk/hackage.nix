{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      development = false;
    } // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "lens-named";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2018 Vanessa McHale";
        maintainer = "vamchale@gmail.com";
        author = "Vanessa McHale";
        homepage = "https://github.com/vmchale/lens-named#readme";
        url = "";
        synopsis = "Helper for use with lens";
        description = "Simplifies generation of simple lenses";
        buildType = "Simple";
      };
      components = {
        lens-named = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.template-haskell
          ];
        };
      };
    }