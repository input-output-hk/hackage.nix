{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "TCache";
        version = "0.10.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto Gómez Corona";
      homepage = "";
      url = "";
      synopsis = "A Transactional cache with user-defined persistence";
      description = "TCache is a transactional cache with configurable persitence. It allows conventional\nSTM transactions for objects that syncronize  with\ntheir user defined storages. Default persistence in files is provided for testing purposes\nState in memory and into permanent storage is transactionally coherent.\n\nSee \"Data.TCache\" for details";
      buildType = "Simple";
    };
    components = {
      "TCache" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.old-time)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.RefSerialize)
        ];
      };
    };
  }