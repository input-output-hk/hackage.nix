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
        name = "hcg-minus";
        version = "0.11";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://slavepianos.org/rd/?t=hcg-minus";
      url = "";
      synopsis = "haskell cg (minus)";
      description = "cg (minus) library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cairo)
          (hsPkgs.colour)
          (hsPkgs.SG)
        ];
      };
    };
  }