{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lens-tutorial";
          version = "1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Gabriel Gonzalez";
        maintainer = "Gabriel439@gmail.com";
        author = "Gabriel Gonzalez";
        homepage = "";
        url = "";
        synopsis = "Tutorial for the lens library";
        description = "This is a basic tutorial that you can use to get started with\nthe @lens@ library.  This tutorial covers:\n\n* The motivation behind the @lens@ library\n\n* How to use the library for the most common use cases\n\n* How to interpret type errors\n\n* Basic familiarity with how lenses work under the hood";
        buildType = "Simple";
      };
      components = {
        lens-tutorial = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }