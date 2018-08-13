{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      static = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6.0";
      identifier = {
        name = "HTab";
        version = "1.5.5";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "guillaume.hoffmann@loria.fr";
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
            (hsPkgs.filepath)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.directory)
            (hsPkgs.deepseq)
            (hsPkgs.deepseq)
            (hsPkgs.strict)
            (hsPkgs.cmdargs)
            (hsPkgs.cmdargs)
            (hsPkgs.hylolib)
            (hsPkgs.hylolib)
          ];
        };
      };
    };
  }