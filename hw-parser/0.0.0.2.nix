{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.22";
        identifier = {
          name = "hw-parser";
          version = "0.0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2016 John Ky";
        maintainer = "newhoggy@gmail.com";
        author = "John Ky";
        homepage = "http://github.com/haskell-works/hw-parser#readme";
        url = "";
        synopsis = "Simple parser support";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        hw-parser = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.hw-prim
            hsPkgs.mono-traversable
            hsPkgs.text
          ];
        };
      };
    }