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
          name = "opensoundcontrol-ht";
          version = "0.2";
        };
        license = "LicenseRef-GPL";
        copyright = "Henning Thielemann, 2009-2013";
        maintainer = "Henning Thielemann <supercollider@henning-thielemann.de>";
        author = "Henning Thielemann <supercollider@henning-thielemann.de>";
        homepage = "http://www.haskell.org/haskellwiki/SuperCollider";
        url = "";
        synopsis = "Haskell OpenSoundControl utilities";
        description = "Some additional modules I use\nin connection with the SuperCollider wrapper hsc3 by Rohan Drape.\nIt contains:\n\n* a @Transport@ handle type for writing to files\n\n* a @Transport@ monad type for writing to a bytestring without IO.\n\nAlso see the supercollider-ht package which uses this one.";
        buildType = "Simple";
      };
      components = {
        "opensoundcontrol-ht" = {
          depends  = [
            hsPkgs.hosc
            hsPkgs.transformers
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.utility-ht
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.random
              hsPkgs.process
              hsPkgs.base
            ]
            else [ hsPkgs.base ]);
        };
      };
    }