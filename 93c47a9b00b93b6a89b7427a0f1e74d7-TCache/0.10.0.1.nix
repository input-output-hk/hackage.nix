{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "TCache";
          version = "0.10.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "agocorona@gmail.com";
        author = "Alberto Gómez Corona";
        homepage = "";
        url = "";
        synopsis = "A Transactional cache with user-defined persistence";
        description = "TCache is a transactional cache with configurable persitence. It allows conventional\nSTM transactions for objects that syncronize  with\ntheir user defined storages.\nState in memory and into permanent storage is transactionally coherent.\n\nThe package implements serializable STM references, access by key and by record field value, triggers,\nfull text and field indexation, default serialization and a query language based on record fields\n\nThis version add memoization and a persistent and transactional collection/queue\n\nSee \"Data.TCache\" for details";
        buildType = "Simple";
      };
      components = {
        TCache = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.old-time
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.mtl
            hsPkgs.RefSerialize
          ];
        };
      };
    }