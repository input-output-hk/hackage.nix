{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "winery";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018 Fumiaki Kinoshita";
      maintainer = "fumiexcel@gmail.com";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/winery#readme";
      url = "";
      synopsis = "Sustainable serialisation library";
      description = "Please see the README on Github at <https://github.com/fumieval/winery#readme>";
      buildType = "Simple";
    };
    components = {
      "winery" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cpu)
          (hsPkgs.hashable)
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
        ];
      };
      exes = {
        "winery" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.cpu)
            (hsPkgs.hashable)
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
            (hsPkgs.winery)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.cpu)
            (hsPkgs.hashable)
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
            (hsPkgs.winery)
          ];
        };
      };
      benchmarks = {
        "bench-winery" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.cassava)
            (hsPkgs.containers)
            (hsPkgs.cpu)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.gauge)
            (hsPkgs.hashable)
            (hsPkgs.megaparsec)
            (hsPkgs.mtl)
            (hsPkgs.prettyprinter)
            (hsPkgs.prettyprinter-ansi-terminal)
            (hsPkgs.scientific)
            (hsPkgs.semigroups)
            (hsPkgs.serialise)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.winery)
          ];
        };
      };
    };
  }