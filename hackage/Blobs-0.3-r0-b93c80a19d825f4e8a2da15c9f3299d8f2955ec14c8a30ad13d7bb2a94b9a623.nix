{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "Blobs";
        version = "0.3";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Alan Zimmerman <alan.zimm@gmail.com>";
      author = "Arjan van IJzendoorn, Martijn Schrage, Malcolm Wallace";
      homepage = "http://www.cs.york.ac.uk/fp/darcs/Blobs/";
      url = "";
      synopsis = "Diagram editor";
      description = "Blobs is a diagram editor for directed graphs. It is written in\nHaskell, using the platform-independent GUI toolkit wxHaskell. It\nis a community project at a fairly early stage of development - you\nare encouraged to get involved and improve it!\n\nBlobs is a front-end for drawing and editing graph diagrams. You\nmust add your own back-end engine if you want it to do some\nanalysis or processing of the graph.";
      buildType = "Simple";
    };
    components = {
      "Blobs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wx)
          (hsPkgs.wxcore)
          (hsPkgs.HaXml)
          (hsPkgs.polyparse)
          (hsPkgs.directory)
          (hsPkgs.pretty)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "blobs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.wx)
            (hsPkgs.wxcore)
            (hsPkgs.HaXml)
            (hsPkgs.polyparse)
            (hsPkgs.directory)
            (hsPkgs.pretty)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }