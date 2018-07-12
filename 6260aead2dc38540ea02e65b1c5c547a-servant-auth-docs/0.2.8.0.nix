{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-auth-docs";
          version = "0.2.8.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Julian K. Arni";
        maintainer = "jkarni@gmail.com";
        author = "Julian K. Arni";
        homepage = "http://github.com/plow-technologies/servant-auth#readme";
        url = "";
        synopsis = "servant-docs/servant-auth compatibility";
        description = "Please see README.md";
        buildType = "Custom";
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
          "doctests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.servant-auth-docs
              hsPkgs.QuickCheck
              hsPkgs.template-haskell
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
            build-tools = [
              hsPkgs.buildPackages.hspec-discover
            ];
          };
        };
      };
    }