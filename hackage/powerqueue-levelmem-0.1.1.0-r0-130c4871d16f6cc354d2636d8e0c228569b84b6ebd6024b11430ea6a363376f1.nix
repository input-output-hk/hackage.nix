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
        name = "powerqueue-levelmem";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Alexander Thiemann <mail@athiemann.net>";
      maintainer = "mail@athiemann.net";
      author = "Alexander Thiemann";
      homepage = "https://github.com/agrafix/powerqueue#readme";
      url = "";
      synopsis = "A high performance in memory and LevelDB backend for powerqueue";
      description = "A high performance in memory and LevelDB backend for powerqueue";
      buildType = "Simple";
    };
    components = {
      "powerqueue-levelmem" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.powerqueue)
          (hsPkgs.stm)
          (hsPkgs.stm-containers)
          (hsPkgs.unagi-chan)
          (hsPkgs.focus)
          (hsPkgs.leveldb-haskell)
          (hsPkgs.async)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
          (hsPkgs.dlist)
          (hsPkgs.list-t)
          (hsPkgs.filepath)
          (hsPkgs.timespan)
        ];
      };
      tests = {
        "powerqueue-levelmem-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.powerqueue-levelmem)
            (hsPkgs.powerqueue)
            (hsPkgs.hspec)
            (hsPkgs.async)
            (hsPkgs.temporary)
            (hsPkgs.cereal)
          ];
          libs = [
            (pkgs."stdc++")
            (pkgs."leveldb")
            (pkgs."snappy")
          ];
        };
      };
      benchmarks = {
        "powerqueue-levelmem-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.powerqueue)
            (hsPkgs.powerqueue-levelmem)
            (hsPkgs.criterion)
            (hsPkgs.temporary)
            (hsPkgs.cereal)
          ];
          libs = [
            (pkgs."stdc++")
            (pkgs."leveldb")
            (pkgs."snappy")
          ];
        };
      };
    };
  }