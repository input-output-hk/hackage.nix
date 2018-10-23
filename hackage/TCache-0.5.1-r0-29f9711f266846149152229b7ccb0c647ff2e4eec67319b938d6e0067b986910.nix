{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "TCache";
        version = "0.5.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto Gómez Corona";
      homepage = "";
      url = "";
      synopsis = "A Transactional data cache with configurable persitence";
      description = "-------------------------------------------------";
      buildType = "Simple";
    };
    components = {
      "TCache" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.old-time)
        ];
      };
    };
  }