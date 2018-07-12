{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "haskore-realtime";
          version = "0.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://www.haskell.org/haskellwiki/Haskore/";
        url = "";
        synopsis = "Routines for realtime playback of Haskore songs";
        description = "This package contains support for realtime playback of Haskore songs.\nHowever this does not work satisfyingly\nand it introduces dependencies like on 'unix' package,\nthat reduce portability.\nThus we have removed this part from core Haskore.";
        buildType = "Simple";
      };
      components = {
        "haskore-realtime" = {
          depends  = [
            hsPkgs.haskore
            hsPkgs.midi
            hsPkgs.bytestring
            hsPkgs.non-negative
            hsPkgs.event-list
            hsPkgs.data-accessor
            hsPkgs.unix
            hsPkgs.transformers
            hsPkgs.utility-ht
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.directory
              hsPkgs.old-time
              hsPkgs.process
              hsPkgs.base
            ]
            else [ hsPkgs.base ]);
        };
      };
    }