{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "musicxml";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008 Samuel Silva";
      maintainer = "Samuel Silva <silva.samuel@alumni.uminho.pt>";
      author = "Samuel Silva <silva.samuel@alumni.uminho.pt>";
      homepage = "https://troglodita.di.uminho.pt/svn/musica/work/MusicXML";
      url = "";
      synopsis = "Library to parse musicxml and write musicxml.";
      description = "This library translates DTD specification of MusicXML 2.0 into\nspecific type.\nLibrary's purpose is to be interface between\nMusicXML format and its application, allowing reading and\nwritting of musicxml documents.\nThis library supports MusicXML at 2.0 version, not only partwise\nand timewise specification but also opus and container\nspecification.";
      buildType = "Simple";
    };
    components = {
      "musicxml" = {
        depends  = [
          (hsPkgs.pretty)
          (hsPkgs.HaXml)
        ] ++ (if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.old-time)
            (hsPkgs.containers)
          ]
          else [ (hsPkgs.base) ]);
      };
      exes = {
        "test-musicxml" = {};
      };
    };
  }