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
      specVersion = "1.8";
      identifier = {
        name = "sc3-rdu";
        version = "0.14";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 1998-2012";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/?t=sc3-rdu";
      url = "";
      synopsis = "Haskell bindings to sc3-rdu (sc3 rd ugens)";
      description = "Haskell bindings to sc3-rdu (sc3 rd ugens)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hsc3)
          (hsPkgs.hsc3-db)
        ];
      };
    };
  }