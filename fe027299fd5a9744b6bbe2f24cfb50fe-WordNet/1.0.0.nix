{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "WordNet";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Max Rabkin <max.rabkin@gmail.com>";
        author = "Hal Daume III";
        homepage = "";
        url = "";
        synopsis = "Haskell interface to the WordNet database";
        description = "A pure-Haskell interface to the WordNet lexical database of English.\nDepends on the WordNet database, but not on the WordNet source code.";
        buildType = "Simple";
      };
      components = {
        "WordNet" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.filepath
            hsPkgs.array
          ];
        };
      };
    }