{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "pretty";
          version = "1.1.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "David Terei <code@davidterei.com>";
        author = "";
        homepage = "http://github.com/haskell/pretty";
        url = "";
        synopsis = "Pretty-printing library";
        description = "This package contains a pretty-printing library, a set of API's\nthat provides a way to easily print out text in a consistent\nformat of your choosing. This is useful for compilers and related\ntools.\n\nThis library was originally designed by John Hughes's and has since\nbeen heavily modified by Simon Peyton Jones.";
        buildType = "Simple";
      };
      components = {
        pretty = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
          ];
        };
        tests = {
          test-pretty = {
            depends  = [
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }