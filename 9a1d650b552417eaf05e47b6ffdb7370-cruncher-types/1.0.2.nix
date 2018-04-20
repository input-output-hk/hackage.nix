{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "cruncher-types";
          version = "1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2013 - Ricky Elrod";
        maintainer = "ricky@elrod.me";
        author = "Ricky Elrod";
        homepage = "http://github.com/eval-so/cruncher-types";
        url = "";
        synopsis = "Request and Response types for Eval.so's API";
        description = "You are not likely to find this useful unless you are building a library for\naccessing Eval.so's new API, or working on the \"Cruncher\" backend.";
        buildType = "Simple";
      };
      components = {
        cruncher-types = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.aeson
          ];
        };
        tests = {
          hlint = {
            depends  = [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
        };
      };
    }