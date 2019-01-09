{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.16";
      identifier = { name = "clafer"; version = "0.3.5.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Michał Antkiewicz <mantkiew@gsd.uwaterloo.ca>";
      author = "Kacper Bąk, Jimmy Liang, Michał Antkiewicz, Chris Walker, Luke Michael Brown";
      homepage = "http://clafer.org";
      url = "";
      synopsis = "clafer compiles Clafer models to other formats, such as Alloy, XML, HTML, Dot.";
      description = "Clafer is a general purpose, lightweight, structural modeling language developed at GSD Lab, University of Waterloo. Lightweight modeling aims at improving the understanding of the problem domain in the early stages of software development and determining the requirements with fewer defects. Clafer's goal is to make modeling more accessible to a wider range of users and domains. The tool provides a reference language implementation. It translates models to other formats (e.g. Alloy, XML) to allow for reasoning with existing tools.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.HUnit)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.QuickCheck)
          (hsPkgs.transformers)
          (hsPkgs.data-stringmap)
          (hsPkgs.json-builder)
          (hsPkgs.string-conversions)
          (hsPkgs.cmdargs)
          (hsPkgs.executable-path)
          (hsPkgs.glpk-hs)
          (hsPkgs.HaXml)
          (hsPkgs.MaybeT)
          (hsPkgs.split)
          (hsPkgs.test-framework)
          (hsPkgs.test-framework-hunit)
          (hsPkgs.test-framework-quickcheck2)
          (hsPkgs.test-framework-th)
          ];
        };
      exes = {
        "clafer" = {
          depends = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.QuickCheck)
            (hsPkgs.transformers)
            (hsPkgs.data-stringmap)
            (hsPkgs.json-builder)
            (hsPkgs.string-conversions)
            (hsPkgs.cmdargs)
            (hsPkgs.executable-path)
            (hsPkgs.glpk-hs)
            (hsPkgs.HaXml)
            (hsPkgs.MaybeT)
            (hsPkgs.split)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-th)
            (hsPkgs.clafer)
            ];
          };
        };
      tests = {
        "test-suite" = {
          depends = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.QuickCheck)
            (hsPkgs.transformers)
            (hsPkgs.data-stringmap)
            (hsPkgs.json-builder)
            (hsPkgs.string-conversions)
            (hsPkgs.cmdargs)
            (hsPkgs.executable-path)
            (hsPkgs.glpk-hs)
            (hsPkgs.HaXml)
            (hsPkgs.MaybeT)
            (hsPkgs.split)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-th)
            (hsPkgs.clafer)
            ];
          };
        };
      };
    }