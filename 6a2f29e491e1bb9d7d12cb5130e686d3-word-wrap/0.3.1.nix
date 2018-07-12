{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "word-wrap";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Jonathan Daugherty";
        maintainer = "cygnus@foobox.com";
        author = "Jonathan Daugherty";
        homepage = "https://github.com/jtdaugherty/word-wrap/";
        url = "";
        synopsis = "A library for word-wrapping";
        description = "A library for wrapping long lines of text.";
        buildType = "Simple";
      };
      components = {
        "word-wrap" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
          ];
        };
        tests = {
          "word-wrap-tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.word-wrap
              hsPkgs.hspec
            ];
          };
        };
      };
    }