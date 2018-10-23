{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { llvm = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "toolshed";
        version = "0.18.0.0";
      };
      license = "LicenseRef-GPL";
      copyright = "(C) 2010-2015 Dr. Alistair Ward";
      maintainer = "mailto:toolshed@functionalley.eu";
      author = "Dr. Alistair Ward";
      homepage = "http://functionalley.eu";
      url = "";
      synopsis = "Ill-defined library.";
      description = "Ill-defined unrelated utilities used by other packages from <http://functionalley.eu>";
      buildType = "Simple";
    };
    components = {
      "toolshed" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.QuickCheck)
          (hsPkgs.random)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.extra)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.toolshed)
          ];
        };
      };
    };
  }