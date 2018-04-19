{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "logging-effect-extra-file";
          version = "1.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Jason Shipman";
        author = "Jason Shipman";
        homepage = "https://github.com/jship/logging-effect-extra#readme";
        url = "";
        synopsis = "TH splices to augment log messages with file info";
        description = "TH splices to augment log messages with file info.";
        buildType = "Simple";
      };
      components = {
        logging-effect-extra-file = {
          depends  = [
            hsPkgs.base
            hsPkgs.logging-effect
            hsPkgs.wl-pprint-text
            hsPkgs.template-haskell
          ];
        };
        exes = {
          log-file = {
            depends  = [
              hsPkgs.base
              hsPkgs.logging-effect
              hsPkgs.wl-pprint-text
              hsPkgs.logging-effect-extra-file
            ];
          };
          log-file-and-severity = {
            depends  = [
              hsPkgs.base
              hsPkgs.logging-effect
              hsPkgs.wl-pprint-text
              hsPkgs.logging-effect-extra-file
            ];
          };
        };
      };
    }