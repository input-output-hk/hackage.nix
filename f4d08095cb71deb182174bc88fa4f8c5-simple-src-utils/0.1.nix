{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "simple-src-utils";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Evan Laforge <qdunkan@gmail.com>";
        author = "Evan Laforge";
        homepage = "https://github.com/elaforge/simple-src-utils";
        url = "";
        synopsis = "source code editing utilities";
        description = "Collection of small utilities to manipulate source code.";
        buildType = "Simple";
      };
      components = {
        exes = {
          string-literal = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.extra
            ];
          };
          cmt = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.extra
            ];
          };
        };
        tests = {
          test-string-literal = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.extra
              hsPkgs.tasty
              hsPkgs.tasty-hunit
            ];
          };
          test-cmt = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.extra
              hsPkgs.tasty
              hsPkgs.tasty-hunit
            ];
          };
        };
      };
    }