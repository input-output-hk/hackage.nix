{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hw-parser";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016-2018 John Ky";
        maintainer = "newhoggy@gmail.com";
        author = "John Ky";
        homepage = "http://github.com/haskell-works/hw-parser#readme";
        url = "";
        synopsis = "Simple parser support";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "hw-parser" = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.hw-prim
            hsPkgs.text
          ];
        };
      };
    }