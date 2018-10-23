{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      development = false;
      cairo = true;
      diagrams = true;
    };
    package = {
      specVersion = "2.0";
      identifier = {
        name = "hgis";
        version = "1.0.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016-2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Library and for GIS with Haskell";
      description = "Package containing functions to make graphs, read\nshapefiles, and compute areas/perimeters of\ngeographic features.";
      buildType = "Simple";
    };
    components = {
      "hgis" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.Chart)
          (hsPkgs.lens)
          (hsPkgs.composition-prelude)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.directory)
          (hsPkgs.colour)
          (hsPkgs.data-default)
          (hsPkgs.hgis-readshp)
          (hsPkgs.spherical)
        ] ++ pkgs.lib.optional (flags.cairo) (hsPkgs.Chart-cairo)) ++ pkgs.lib.optional (flags.diagrams) (hsPkgs.Chart-diagrams);
      };
      sublibs = {
        "hgis-readshp" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.data-binary-ieee754)
            (hsPkgs.monad-loops)
            (hsPkgs.filepath)
          ];
        };
      };
      tests = {
        "hgis-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hgis)
            (hsPkgs.hspec)
            (hsPkgs.spherical)
          ];
        };
      };
    };
  }