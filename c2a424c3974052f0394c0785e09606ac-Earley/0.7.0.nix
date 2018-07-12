{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Earley";
          version = "0.7.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014-2015 Olle Fredriksson";
        maintainer = "fredriksson.olle@gmail.com";
        author = "Olle Fredriksson";
        homepage = "";
        url = "";
        synopsis = "Parsing all context-free grammars using Earley's algorithm.";
        description = "See <https://www.github.com/ollef/Earley> for more\ninformation and\n<https://github.com/ollef/Earley/tree/master/examples> for\nexamples.";
        buildType = "Simple";
      };
      components = {
        "Earley" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.ListLike
          ];
        };
      };
    }