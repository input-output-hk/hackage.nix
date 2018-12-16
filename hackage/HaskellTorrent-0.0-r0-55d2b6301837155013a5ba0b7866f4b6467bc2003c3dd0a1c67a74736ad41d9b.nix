{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "HaskellTorrent";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Jesper Louis Andersen";
      maintainer = "jesper.louis.andersen@gmail.com";
      author = "Jesper Louis Andersen";
      homepage = "";
      url = "";
      synopsis = "A concurrent bittorrent client";
      description = "HaskellTorrent provides a BitTorrent client, based on the CML library\nfor concurrency. This is an early preview release which is capable of\ndownloading files from various torrent trackers, but have not yet\ndemonstrated to be correct in all aspects.\nIt is expected that the package currently contains numerous and even\ngrave bugs. Patches to fix any problem are welcome!";
      buildType = "Configure";
    };
    components = {
      exes = {
        "HaskellTorrent" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.cereal)
            (hsPkgs.pretty)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.random)
            (hsPkgs.network)
            (hsPkgs.cml)
            (hsPkgs.HTTP)
            (hsPkgs.HsOpenSSL)
            (hsPkgs.time)
            (hsPkgs.random-shuffle)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }