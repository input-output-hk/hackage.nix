{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "winery"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2019 Fumiaki Kinoshita";
      maintainer = "fumiexcel@gmail.com";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/winery#readme";
      url = "";
      synopsis = "Sustainable serialisation library";
      description = "Please see the README on GitHub at <https://github.com/fumieval/winery#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cpu)
          (hsPkgs.fast-builder)
          (hsPkgs.hashable)
          (hsPkgs.HUnit)
          (hsPkgs.megaparsec)
          (hsPkgs.mtl)
          (hsPkgs.prettyprinter)
          (hsPkgs.prettyprinter-ansi-terminal)
          (hsPkgs.scientific)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.QuickCheck)
          ];
        };
      exes = {
        "winery" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.winery)
            (hsPkgs.megaparsec)
            (hsPkgs.text)
            (hsPkgs.prettyprinter)
            (hsPkgs.prettyprinter-ansi-terminal)
            (hsPkgs.bytestring)
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.winery)
            (hsPkgs.vector)
            (hsPkgs.unordered-containers)
            (hsPkgs.fast-builder)
            (hsPkgs.time)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.scientific)
            (hsPkgs.bytestring)
            ];
          };
        };
      benchmarks = {
        "bench-winery" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.gauge)
            (hsPkgs.aeson)
            (hsPkgs.cereal)
            (hsPkgs.winery)
            (hsPkgs.binary)
            (hsPkgs.serialise)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            ];
          };
        };
      };
    }