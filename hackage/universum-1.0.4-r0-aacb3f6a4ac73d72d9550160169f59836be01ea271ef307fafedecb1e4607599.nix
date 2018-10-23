{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "universum";
        version = "1.0.4";
      };
      license = "MIT";
      copyright = "2016 Stephen Diehl, 2016-2018 Serokell";
      maintainer = "Serokell <hi@serokell.io>";
      author = "Stephen Diehl, @serokell";
      homepage = "https://github.com/serokell/universum";
      url = "";
      synopsis = "Custom prelude used in Serokell";
      description = "See README.md file for more details.";
      buildType = "Simple";
    };
    components = {
      "universum" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.ghc-prim)
          (hsPkgs.hashable)
          (hsPkgs.microlens)
          (hsPkgs.microlens-mtl)
          (hsPkgs.mtl)
          (hsPkgs.safe-exceptions)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.text-format)
          (hsPkgs.transformers)
          (hsPkgs.type-operators)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "universum-doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.Glob)
          ];
        };
      };
      benchmarks = {
        "universum-benchmark" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.universum)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.hashable)
            (hsPkgs.mtl)
            (hsPkgs.semigroups)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }