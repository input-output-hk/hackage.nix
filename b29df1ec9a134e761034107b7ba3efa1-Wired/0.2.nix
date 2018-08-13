{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "Wired";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008. Emil Axelsson <emax@chalmers.se>";
      maintainer = "Emil Axelsson <emax@chalmers.se>";
      author = "Emil Axelsson <emax@chalmers.se>";
      homepage = "http://www.cs.chalmers.se/~emax/wired/";
      url = "";
      synopsis = "Wire-aware hardware description";
      description = "Wired is an extension to the hardware description library Lava targeting (not\nexclusively) semi-custom VLSI design. A particular aim of Wired is to give the\ndesigner more control over the routing wires' effects on performance.\n\nThe goal is a system with the following features:\n\n* Convenient circuit description in monadic style.\n\n* Layout/wiring expressed using optional annotations, allowing incremental\nspecification of physical aspects.\n\n* Export designs to several formats:\n\n(1) Lava (for e.g. verification)\n\n(2) Postscript (for visualizing layout and wiring)\n\n(3) Design Exchange Format (for interfacing to standard CAD tools)\n\n* Accurate, wire-aware timing/power analysis within the system.\n\n* Support for modern standard cell libraries.\n\n* Automatic compilation of standard cell libraries.\n\nWe are not very far from this goal. The missing parts are power analysis and\ncell library compilation, and sequential circuits are not yet fully supported.\nAlso, there is virtually no documentation. The best place to look for guidance\nis in the @Examples@ directory. The following thesis\n<http://www.cs.chalmers.se/~emax/documents/PhD_thesis.pdf> gives more\ninformation about the background and some explanation of programming\ntechniques used in Wired. It should also be said that the library is still\nquite unstable and has not yet been tested in any larger scale.\n\nThe standard cell library shipped with Wired (\"Libs.Nangate45.Wired\") is an\nopen-source 45nm library from Nangate (<http://www.nangate.com>) provided for\nthe purposes of testing and exploring EDA flows. It is not intended for\nfabrication. More information is given in the license agreement\nin \"Libs.Nangate45.LICENSE\". If anyone is interested in real cell libraries\n(currently 130nm, 90nm and 65nm from STM), please contact the maintainer of\nthe Wired library.\n\nCurrently, Wired contains its own version of Lava which is a bit different\nfrom the standard version (package @chalmers-lava2000@ on Hackage) To make\nthings more complicated, this version of Lava actually uses the standard\nversion for simulation and verification. Ideally there should only be /one/\nLava library, independent of the Wired package. Hopefully, this will happen in\na not too distant future.";
      buildType = "Simple";
    };
    components = {
      "Wired" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.chalmers-lava2000)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.QuickCheck)
        ];
      };
    };
  }