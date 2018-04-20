{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "xpathdsv";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Daniel Choi 2016";
        maintainer = "dhchoi@gmail.com";
        author = "Daniel Choi";
        homepage = "https://github.com/danchoi/xpathdsv#readme";
        url = "";
        synopsis = "Command line tool to extract DSV data from HTML and XML with XPATH expressions";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        exes = {
          xpathdsv = {
            depends  = [
              hsPkgs.base
              hsPkgs.hxt
              hsPkgs.hxt-xpath
              hsPkgs.text
              hsPkgs.optparse-applicative
            ];
          };
        };
      };
    }