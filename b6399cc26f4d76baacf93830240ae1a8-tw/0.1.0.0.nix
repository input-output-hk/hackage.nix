{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tw";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Daniel Lovasko";
        maintainer = "Daniel Lovasko <daniel.lovasko@gmail.com>";
        author = "Daniel Lovasko <daniel.lovasko@gmail.com>";
        homepage = "https://github.com/lovasko/tw";
        url = "";
        synopsis = "Trailing Whitespace";
        description = "Command-line utility to detect trailing whitespace";
        buildType = "Simple";
      };
      components = {
        exes = {
          "tw" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
            ];
          };
        };
      };
    }