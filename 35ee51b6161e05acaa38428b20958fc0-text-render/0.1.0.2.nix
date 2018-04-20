{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "text-render";
          version = "0.1.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "ithinkican@gmail.com";
        author = "Allen Nelson";
        homepage = "http://github.com/thinkpad20/text-render";
        url = "";
        synopsis = "A type class for rendering objects as text, pretty-printing, etc.";
        description = "";
        buildType = "Simple";
      };
      components = {
        text-render = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.parsec
            hsPkgs.mtl
            hsPkgs.classy-prelude
          ];
        };
      };
    }