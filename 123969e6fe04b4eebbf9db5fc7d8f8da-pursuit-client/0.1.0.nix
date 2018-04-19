{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pursuit-client";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Gil Mizrahi";
        maintainer = "soupiral@gmail.com";
        author = "Gil Mizrahi";
        homepage = "https://github.com/soupi/pursuit-client";
        url = "";
        synopsis = "A cli client for pursuit";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        pursuit-client = {
          depends  = [
            hsPkgs.base
            hsPkgs.wreq
            hsPkgs.http-client
            hsPkgs.lens
            hsPkgs.taggy-lens
            hsPkgs.text
          ];
        };
        exes = {
          pursuit-search = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.pursuit-client
            ];
          };
        };
      };
    }