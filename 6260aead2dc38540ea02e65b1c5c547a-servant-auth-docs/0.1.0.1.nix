{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-auth-docs";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Julian K. Arni";
        maintainer = "jkarni@gmail.com";
        author = "Julian K. Arni";
        homepage = "http://github.com/jkarni/servant-auth-docs#readme";
        url = "";
        synopsis = "servant-docs/servant-auth compatibility";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "servant-auth-docs" = {
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
          "doctest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.servant-docs
              hsPkgs.servant
              hsPkgs.servant-auth
              hsPkgs.lens
              hsPkgs.doctest
              hsPkgs.Glob
              hsPkgs.yaml
            ];
          };
          "spec" = {
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