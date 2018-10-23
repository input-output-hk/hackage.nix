{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hps";
        version = "0.16";
      };
      license = "LicenseRef-GPL";
      copyright = "Rohan Drape, 2006-2017";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape and others";
      homepage = "http://rd.slavepianos.org/t/hps";
      url = "";
      synopsis = "Haskell Postscript";
      description = "Haskell library partially implementing the\npostscript drawing model.";
      buildType = "Simple";
    };
    components = {
      "hps" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hcg-minus)
          (hsPkgs.filepath)
          (hsPkgs.process)
        ];
      };
    };
  }