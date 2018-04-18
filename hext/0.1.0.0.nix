{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hext";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 David Anekstein";
        maintainer = "aneksteind@gmail.com";
        author = "David Anekstein";
        homepage = "https://github.com/aneksteind/hext#readme";
        url = "";
        synopsis = "Initial project template from stack";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        hext = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.text
          ];
        };
        exes = {
          hext-exe = {
            depends  = [
              hsPkgs.base
              hsPkgs.hext
            ];
          };
        };
      };
    }