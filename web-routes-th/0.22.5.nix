{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "web-routes-th";
          version = "0.22.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "partners@seereason.com";
        author = "jeremy@seereason.com";
        homepage = "";
        url = "";
        synopsis = "Support for deriving PathInfo using Template Haskell";
        description = "web-routes is a portable library for type-safe URLs. This module adds\nsupport for creating the URL parsers/printers automatically using\nTemplate Haskell.";
        buildType = "Simple";
      };
      components = {
        web-routes-th = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.split
            hsPkgs.web-routes
          ];
        };
        tests = {
          Test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.web-routes
              hsPkgs.web-routes-th
            ];
          };
        };
      };
    }