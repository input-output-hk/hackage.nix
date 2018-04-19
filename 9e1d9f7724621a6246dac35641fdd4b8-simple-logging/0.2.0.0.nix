{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "simple-logging";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "2017 Luka Horvat";
        maintainer = "luka.horvat9@gmail.com";
        author = "Luka Horvat";
        homepage = "https://gitlab.com/haskell-hr/logging";
        url = "";
        synopsis = "Logging effect to plug into the simple-effects framework";
        description = "";
        buildType = "Simple";
      };
      components = {
        simple-logging = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.vector
            hsPkgs.time
            hsPkgs.bytestring
            hsPkgs.iso8601-time
            hsPkgs.text
            hsPkgs.simple-effects
            hsPkgs.exceptions
            hsPkgs.mtl
            hsPkgs.string-conv
            hsPkgs.lens
          ];
        };
        tests = {
          logging-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.logging
              hsPkgs.simple-effects
            ];
          };
        };
      };
    }