{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "2.0";
        identifier = {
          name = "primitive-checked";
          version = "0.6.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Andrew Martin";
        maintainer = "andrew.thaddeus@gmail.com";
        author = "Andrew Martin";
        homepage = "https://github.com/andrewthad/primitive-checked#readme";
        url = "";
        synopsis = "primitive functions with bounds-checking";
        description = "\nThis library is intended to be used as a drop-in replacement for\nthe `primitive` library in test environments. It adds bounds-checking\nto all functions in `primitive` that are able to cause segfaults.\nIt is not recommended to use this library in production. However,\nif you are testing a library or application you wrote that uses\n`primitive`, you can temporarily replace your `primitive` dependency\nwith `primitive-checked`, and your segfaults will become normal\nhaskell exceptions that you can hunt down with GHC's stack trace\nfacilities.\n\nThe versioning for this library matches the version of primitive\nthat is targeted. The first three digits of the version match the\nversion of `primitive`. The fourth digit is used for bug fixes.\nThis packages deviates slightly from the PVP in that functions\ncan be added to the API with only a bump to the fourth digit.";
        buildType = "Simple";
      };
      components = {
        "primitive-checked" = {
          depends  = [
            hsPkgs.base
            hsPkgs.primitive
          ];
        };
      };
    }