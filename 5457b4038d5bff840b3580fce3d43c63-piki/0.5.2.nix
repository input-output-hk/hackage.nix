{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "piki";
          version = "0.5.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "http://www.mew.org/~kazu/proj/piki/";
        url = "";
        synopsis = "Yet another text-to-html converter";
        description = "\"piki\" is a script to convert a simple text file\nto an HTML file.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "piki" = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.text
              hsPkgs.mtl
            ];
          };
        };
      };
    }