{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "acid-state";
          version = "0.4";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "Lemmih <lemmih@gmail.com>";
        author = "David Himmelstrup";
        homepage = "http://acid-state.seize.it/";
        url = "";
        synopsis = "Add ACID guarantees to any serializable Haskell data structure.";
        description = "Use regular Haskell data structures as your database and get stronger ACID guarantees than most RDBMS offer.";
        buildType = "Simple";
      };
      components = {
        "acid-state" = {
          depends  = [
            hsPkgs.base
            hsPkgs.cereal
            hsPkgs.safecopy
            hsPkgs.bytestring
            hsPkgs.stm
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.mtl
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.template-haskell
            hsPkgs.unix
          ];
        };
      };
    }