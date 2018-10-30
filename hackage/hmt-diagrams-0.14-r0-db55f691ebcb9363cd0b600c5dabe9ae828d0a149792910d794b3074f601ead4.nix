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
        name = "hmt-diagrams";
        version = "0.14";
      };
      license = "LicenseRef-GPL";
      copyright = "Rohan Drape, 2006-2013";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/?t=hmt-diagrams";
      url = "";
      synopsis = "Haskell Music Theory Diagrams";
      description = "Haskell Music Theory Diagrams";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cairo)
          (hsPkgs.colour)
          (hsPkgs.hcg-minus)
          (hsPkgs.hcg-minus-cairo)
          (hsPkgs.hmt)
          (hsPkgs.html-minimalist)
          (hsPkgs.filepath)
          (hsPkgs.xml)
        ];
      };
    };
  }