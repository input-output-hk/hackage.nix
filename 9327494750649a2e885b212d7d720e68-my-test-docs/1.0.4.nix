{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "my-test-docs";
          version = "1.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "none";
        author = "";
        homepage = "";
        url = "";
        synopsis = "spam";
        description = "spam.";
        buildType = "Custom";
      };
      components = {
        my-test-docs = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.servant-docs
            hsPkgs.servant
            hsPkgs.servant-auth
            hsPkgs.lens
          ];
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.servant-auth-docs
              hsPkgs.QuickCheck
              hsPkgs.template-haskell
            ];
          };
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.servant-docs
              hsPkgs.servant
              hsPkgs.servant-auth
              hsPkgs.lens
              hsPkgs.servant-auth-docs
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }