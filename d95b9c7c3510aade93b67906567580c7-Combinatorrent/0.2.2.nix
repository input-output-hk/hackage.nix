{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      debug = false;
      threadscope = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "Combinatorrent";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009,2010 Jesper Louis Andersen";
      maintainer = "jesper.louis.andersen@gmail.com";
      author = "Jesper Louis Andersen";
      homepage = "";
      url = "";
      synopsis = "A concurrent bittorrent client";
      description = "Combinatorrent provides a BitTorrent client, based on STM\nfor concurrency. This is an early preview release which is capable of\ndownloading files from various torrent trackers, but have not yet\ndemonstrated to be correct in all aspects.\nIt is expected that the package currently contains numerous and even\ngrave bugs. Patches to fix any problem are welcome!";
      buildType = "Configure";
    };
    components = {
      exes = {
        "Combinatorrent" = {
          depends  = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hopenssl)
            (hsPkgs.hslogger)
            (hsPkgs.HTTP)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.PSQueue)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.random-shuffle)
            (hsPkgs.stm)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.time)
          ];
        };
      };
    };
  }