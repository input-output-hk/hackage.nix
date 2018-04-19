{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "graphted";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "BSD3";
        maintainer = "mayreply@aaronfriel.com";
        author = "Aaron Friel";
        homepage = "https://github.com/aaronfriel/graphted#readme";
        url = "";
        synopsis = "Graph indexed monads.";
        description = "";
        buildType = "Simple";
      };
      components = {
        graphted = {
          depends  = [
            hsPkgs.base
            hsPkgs.indexed
          ];
        };
      };
    }