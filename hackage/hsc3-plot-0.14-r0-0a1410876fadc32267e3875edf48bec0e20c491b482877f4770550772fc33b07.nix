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
        name = "hsc3-plot";
        version = "0.14";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape and others, 2013";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/?t=hsc3-plot";
      url = "";
      synopsis = "Haskell SuperCollider Plotting";
      description = "Plotting functions for hsc3";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.hsc3)
          (hsPkgs.filepath)
          (hsPkgs.gnuplot)
          (hsPkgs.process)
          (hsPkgs.statistics)
          (hsPkgs.vector)
        ];
      };
    };
  }