{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "gutenberg-fibonaccis";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2011, Justin Hanekom";
        maintainer = "Justin Hanekom <justin.hanekom@gmail.com>";
        author = "Justin Hanekom <justin.hanekom@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "The first 1001 Fibonacci numbers, retrieved from the Gutenberg Project.";
        description = "Provides the first 1001 Fibonacci numbers, retrieved from the Gutenberg Project, along with functions to retrieve and query these numbers.";
        buildType = "Simple";
      };
      components = {
        gutenberg-fibonaccis = {
          depends  = [ hsPkgs.base ];
        };
      };
    }