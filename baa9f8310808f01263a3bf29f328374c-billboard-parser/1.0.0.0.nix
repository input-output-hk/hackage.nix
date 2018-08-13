{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "billboard-parser";
        version = "1.0.0.0";
      };
      license = "LGPL-3.0-only";
      copyright = "(c) 2012--2013 Utrecht University";
      maintainer = "W. Bas de Haas <bash@cs.uu.nl>";
      author = "W. Bas de Haas";
      homepage = "http://ddmal.music.mcgill.ca/billboard";
      url = "";
      synopsis = "A parser for the Billboard chord dataset";
      description = "We present a parser for the world famous Billboard dataset\ncontaining the chord transcriptions of over 1000\nprofessional chord transcriptions of popular music randomly\nselected from /Billboard/ magazine's ``Hot 100'' chart\nbetween 1958 and 1991, all time-aligned with audio.\n\nSee: W. Bas de Haas and John Ashley Burgoyne,\n/Parsing the Billboard Chord Transcriptions/, Technical Report\nUU-CS-2012-018, Department of Information and Computing\nSciences, Utrecht University, 2012.\n(<http://www.cs.uu.nl/research/techreps/repo/CS-2012/2012-018.pdf>)\n\nAnd: John Ashley Burgoyne, Jonathan Wild, Ichiro Fujinaga,\n/An Expert Ground-Truth Set for Audio Chord Recognition and Music Analysis/,\nIn: Proceedings of International\nConference on Music Information Retrieval, 2011.\n(<http://ismir2011.ismir.net/papers/OS8-1.pdf>)";
      buildType = "Simple";
    };
    components = {
      "billboard-parser" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.uu-parsinglib)
          (hsPkgs.ListLike)
          (hsPkgs.HUnit)
          (hsPkgs.mtl)
          (hsPkgs.HarmTrace-Base)
        ];
      };
      exes = {
        "billboard-parser" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parseargs)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.uu-parsinglib)
            (hsPkgs.ListLike)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.HarmTrace-Base)
          ];
        };
      };
    };
  }