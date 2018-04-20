{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "lit";
          version = "0.1.0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "cdosborn@uw.edu";
        author = "cdosborn";
        homepage = "cdosborn.com";
        url = "";
        synopsis = "A simple tool for literate programming";
        description = "lit has a minimal syntax for implementing literate\nprogramming. It generates both HTML and the native\nsource code. Follow active development here https://github.com/cdosborn/lit";
        buildType = "Simple";
      };
      components = {
        exes = {
          lit = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.regex-compat
              hsPkgs.parsec
              hsPkgs.unordered-containers
              hsPkgs.cheapskate
              hsPkgs.blaze-markup
              hsPkgs.blaze-html
              hsPkgs.highlighting-kate
              hsPkgs.time
              hsPkgs.directory
            ];
          };
        };
      };
    }