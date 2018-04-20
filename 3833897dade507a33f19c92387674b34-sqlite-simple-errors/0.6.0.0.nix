{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sqlite-simple-errors";
          version = "0.6.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2016 Joe Canero";
        maintainer = "jmc41493@gmail.com";
        author = "Joe Canero";
        homepage = "https://github.com/caneroj1/sqlite-simple-errors";
        url = "";
        synopsis = "Wrapper around errors from sqlite-simple";
        description = "Wrapper around errors from sqlite-simple. Get easy-to-pattern-match\ndata types for constraint errors.";
        buildType = "Simple";
      };
      components = {
        sqlite-simple-errors = {
          depends  = [
            hsPkgs.base
            hsPkgs.sqlite-simple
            hsPkgs.text
            hsPkgs.parsec
          ];
        };
        tests = {
          sqlite-simple-errors-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.sqlite-simple-errors
              hsPkgs.sqlite-simple
              hsPkgs.text
              hsPkgs.mtl
            ];
          };
        };
      };
    }