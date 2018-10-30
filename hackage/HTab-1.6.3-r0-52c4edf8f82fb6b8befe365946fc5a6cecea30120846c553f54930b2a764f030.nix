{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { static = false; };
    package = {
      specVersion = "1.6.0";
      identifier = {
        name = "HTab";
        version = "1.6.3";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "guillaumh@gmail.com";
      author = "Guillaume Hoffmann, Carlos Areces, Daniel Gorín, Juan Heguiabehere";
      homepage = "http://www.glyc.dc.uba.ar/intohylo/htab.php";
      url = "";
      synopsis = "Tableau based theorem prover for hybrid logics";
      description = "Tableau based theorem prover for hybrid logics";
      buildType = "Simple";
    };
    components = {
      exes = {
        "htab" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.strict)
            (hsPkgs.cmdargs)
            (hsPkgs.hylolib)
          ];
        };
      };
    };
  }