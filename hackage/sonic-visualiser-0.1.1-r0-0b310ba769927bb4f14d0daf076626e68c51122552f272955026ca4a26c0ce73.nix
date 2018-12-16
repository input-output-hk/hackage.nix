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
      specVersion = "0";
      identifier = {
        name = "sonic-visualiser";
        version = "0.1.1";
      };
      license = "LicenseRef-GPL";
      copyright = "Stefan Kersten, 2007-2008";
      maintainer = "Stefan Kersten <sk@k-hornz.de>";
      author = "Stefan Kersten";
      homepage = "http://darcs.k-hornz.de/cgi-bin/darcsweb.cgi?r=sonic-visualiser;a=summary";
      url = "";
      synopsis = "Sonic Visualiser";
      description = "Library for reading and parsing Sonic Visualiser project files.\n\nSonic Visualiser is available at <http://sonicvisualiser.org>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.bzlib)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
          (hsPkgs.utf8-string)
          (hsPkgs.xml)
        ];
      };
      exes = {
        "svdump" = {
          depends = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.bzlib)
            (hsPkgs.mtl)
            (hsPkgs.pretty)
            (hsPkgs.utf8-string)
            (hsPkgs.xml)
          ];
        };
      };
    };
  }