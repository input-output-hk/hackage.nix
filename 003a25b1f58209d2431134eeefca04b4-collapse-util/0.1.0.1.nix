{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "collapse-util";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mwotton@gmail.com";
        author = "Mark Wotton";
        homepage = "http://github.com/mwotton/collapse";
        url = "";
        synopsis = "utility for collapsing adjacent writes";
        description = "tiny utility for collapsing adjacent writes";
        buildType = "Simple";
      };
      components = {
        exes = {
          collapse = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }