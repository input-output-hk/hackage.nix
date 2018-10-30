{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { llvm = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "fishfood";
        version = "0.0.1.8";
      };
      license = "LicenseRef-GPL";
      copyright = "(C) 2013-2015 Dr. Alistair Ward";
      maintainer = "mailto:fishfood@functionalley.eu";
      author = "Dr. Alistair Ward";
      homepage = "http://functionalley.eu";
      url = "";
      synopsis = "Calculates file-size frequency-distribution.";
      description = "Counts the number of files in a set of bins, each of which holds only those files which fall within a specific size-interval.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.factory)
          (hsPkgs.mtl)
          (hsPkgs.toolshed)
        ];
      };
      exes = {
        "fishfood" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.data-default)
            (hsPkgs.fishfood)
            (hsPkgs.mtl)
            (hsPkgs.toolshed)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.fishfood)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.toolshed)
          ];
        };
      };
    };
  }