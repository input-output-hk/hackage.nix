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
      specVersion = "1.10";
      identifier = {
        name = "Lambdaya";
        version = "0.2.0.0.1";
      };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "luka.rahne@gmail.com";
      author = "Luka Rahne";
      homepage = "";
      url = "";
      synopsis = "Library for RedPitaya";
      description = "Native library for RedPitaya that runs on RedPitaya.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.binary)
          (hsPkgs.pipes)
          (hsPkgs.pipes-network)
          (hsPkgs.pipes-binary)
          (hsPkgs.pipes-parse)
        ] ++ pkgs.lib.optional (system.isArm) (hsPkgs.unix);
      };
    };
  }