{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "graphted";
          version = "0.1.0.2";
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
          depends  = [ hsPkgs.base ];
        };
      };
    }