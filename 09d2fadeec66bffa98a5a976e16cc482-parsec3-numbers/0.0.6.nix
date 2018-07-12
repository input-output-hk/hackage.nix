{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      parsec3 = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "parsec3-numbers";
          version = "0.0.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "chr.maeder@web.de";
        author = "chr.maeder@web.de";
        homepage = "";
        url = "";
        synopsis = "Utilities for parsing numbers from Char sequences";
        description = "parsec3-numbers provides the number parsers independent from\ntoken parsers";
        buildType = "Simple";
      };
      components = {
        "parsec3-numbers" = {
          depends  = [
            hsPkgs.base
          ] ++ (if _flags.parsec3
            then [ hsPkgs.parsec3 ]
            else [ hsPkgs.parsec ]);
        };
      };
    }