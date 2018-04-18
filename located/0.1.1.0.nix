{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "located";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016";
        maintainer = "awesomelyawesome@gmail.com";
        author = "Trevor Elliott";
        homepage = "https://github.com/elliottt/located";
        url = "";
        synopsis = "Source location helpers";
        description = "Types and functions for working with location-tagged tokens. Includes an\nimplementation of the offsides-rule, to make adding layout to a compiler an\neasy task.";
        buildType = "Simple";
      };
      components = {
        located = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
          ];
        };
      };
    }