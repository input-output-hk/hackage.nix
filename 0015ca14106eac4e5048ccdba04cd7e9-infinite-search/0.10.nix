{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "infinite-search";
          version = "0.10";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Luke Palmer <lrpalmer@gmail.com>";
        author = "Martin Escardo";
        homepage = "http://github.com/luqui/infinite-search";
        url = "";
        synopsis = "Exhaustively searchable infinite sets.";
        description = "An implementation of Martin Escardo's exhaustively searchable sets.";
        buildType = "Simple";
      };
      components = {
        infinite-search = {
          depends  = [ hsPkgs.base ];
        };
      };
    }