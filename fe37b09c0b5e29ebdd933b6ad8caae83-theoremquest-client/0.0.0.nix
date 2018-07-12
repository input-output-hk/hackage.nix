{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "theoremquest-client";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Tom Hawkins <tomahawkins@gmail.com>";
        author = "Tom Hawkins <tomahawkins@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A simple client for the TheoremQuest theorem proving game.";
        description = "TODO";
        buildType = "Simple";
      };
      components = {
        exes = {
          "tq" = {
            depends  = [
              hsPkgs.base
              hsPkgs.network
              hsPkgs.HTTP
              hsPkgs.theoremquest
            ];
          };
        };
      };
    }