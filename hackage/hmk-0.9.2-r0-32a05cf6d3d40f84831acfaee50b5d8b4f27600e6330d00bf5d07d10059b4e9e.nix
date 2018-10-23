{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2.0";
      identifier = {
        name = "hmk";
        version = "0.9.2";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) 2008-2009. Mathieu Boespflug <mboes@tweag.net>";
      maintainer = "Mathieu Boespflug <mboes@tweag.net>";
      author = "Mathieu Boespflug";
      homepage = "http://code.haskell.org/~mboes/hmk";
      url = "";
      synopsis = "A make alternative based on Plan9's mk.";
      description = "Clone of Plan9's mk command, said to have \\\"improved on make by\nremoving all the vowels from the name\\\".\n\nThe library exports a generic dependency graph traversal that\ncan be used independently of the rest.\n\nThe documentation is embedded in the literate Haskell source.\n\n/Note:/ the library portion is released to the /public\ndomain/. Those source files that are not part of the library\nare released under GPLv3 or later.";
      buildType = "Simple";
    };
    components = {
      "hmk" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "hmk" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.unix)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.pcre-light)
          ];
        };
      };
    };
  }