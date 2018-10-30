{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "TCache";
        version = "0.8.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto Gómez Corona";
      homepage = "";
      url = "";
      synopsis = "Data caching and Persistent STM transactions";
      description = "TCache is a transactional cache with configurable persitence. It allows conventional\nSTM transactions for objects that syncronize  with\ntheir user defined storages. Default persistence in files is provided for testing purposes\n\nThis version support  the backward compatible stuff, that permits transparent\nretrievals of objects and transcactions between objects without directly using STM references\n('with*Resource(s)' calls), Now it goes in the oposite direction by providing explicit STM persistent\nreferences (called 'DBRefś') that leverage the nice and traditional haskell reference syntax\nfor performing database transactions.\n\n'DBRef's are in essence, persistent TVars indexed in the cache, with a traditional 'readDBRef',\n'writeDBRef' Haskell interface in the STM monad.\nAdditionally, because DBRefs are serializable, they can be embeded in serializable registers.\nBecause they are references,they point to other serializable registers.\nThis permits persistent mutable and efficient Inter-object relations.\n\nTriggers are also included in this release. They are user defined hooks that are called back on register updates. That can be used for\neasing the actualization of inter-object relations and also permit more higuer level\nand customizable accesses. The internal indexes used for the query language uses triggers.\n\nIt also  implements an straighforwards non-intrusive pure-haskell type safe query language  based\non register field relations. This module must be imported separately. See\n\"Data.TCache.IndexQuery\" for further information\n\nNow the file persistence is more reliable.The IO reads are safe inside STM transactions.\n\nTo ease the implementation of other user-defined persistence, \"Data.TCache.FIlePersistence\" needed\nto be imported  explcitly for deriving file persistence instances.\n\nIn this release some stuff has been supressed without losing functionality. Dynamic interfaces\nare not needed since TCache can handle heterogeneous data.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.old-time)
          (hsPkgs.stm)
          (hsPkgs.containers)
          (hsPkgs.transformers)
        ];
      };
    };
  }