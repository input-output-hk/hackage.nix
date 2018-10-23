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
        name = "haskore-realtime";
        version = "0.0.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Haskore/";
      url = "http://darcs.haskell.org/haskore-realtime/";
      synopsis = "Routines for realtime playback of Haskore songs";
      description = "This package contains support for realtime playback of Haskore songs.\nHowever this does not work satisfyingly\nand it introduces dependencies like on 'unix' package,\nthat reduce portability.\nThus we have removed this part from core Haskore.";
      buildType = "Simple";
    };
    components = {
      "haskore-realtime" = {
        depends  = [
          (hsPkgs.haskore)
          (hsPkgs.midi)
          (hsPkgs.bytestring)
          (hsPkgs.non-negative)
          (hsPkgs.event-list)
          (hsPkgs.data-accessor)
          (hsPkgs.unix)
          (hsPkgs.mtl)
        ] ++ (if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.old-time)
            (hsPkgs.directory)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }