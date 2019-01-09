{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { llvm-fast = false; development = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "hgis"; version = "0.1.3.8"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016-2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Package and command-line for GIS with Haskell";
      description = "Package containting functions to make graphs, read\nshapefiles, and compute areas/perimeters of\ngeographic features.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.optparse-applicative)
          (hsPkgs.Chart)
          (hsPkgs.Chart-cairo)
          (hsPkgs.Chart-diagrams)
          (hsPkgs.lens)
          (hsPkgs.composition-prelude)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.directory)
          (hsPkgs.colour)
          (hsPkgs.data-default)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.filepath)
          (hsPkgs.monad-loops)
          ];
        };
      exes = { "hgis" = { depends = [ (hsPkgs.base) (hsPkgs.hgis) ]; }; };
      tests = {
        "hgis-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.hgis) (hsPkgs.hspec) ];
          };
        };
      };
    }