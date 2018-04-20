{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "theoremquest";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Tom Hawkins <tomahawkins@gmail.com>";
        author = "Tom Hawkins <tomahawkins@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A common library for TheoremQuest, a theorem proving game.";
        description = "TODO";
        buildType = "Simple";
      };
      components = {
        theoremquest = {
          depends  = [
            hsPkgs.base
            hsPkgs.HTTP
            hsPkgs.utf8-string
            hsPkgs.json
          ];
        };
      };
    }