{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "haskades";
          version = "0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "© 2012 Stephen Paul Weber";
        maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
        author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
        homepage = "http://github.com/singpolyma/haskades";
        url = "";
        synopsis = "Utility to generate bindings for BlackBerry Cascades";
        description = "Autogeneration of bindings for creating BlackBerry Cascades apps\nwith Haskell back ends.\n\nRun as:\n\n> ./haskades HaskadesBinding.hs haskades_run.cpp < Types.hs\n\nWhere Types.hs is a Haskell file containing a record type declaration\nnamed 'Slots' and a sum type declaration named 'Signals' which fully\nspecifies the communication possible between the UI layer (which you\nwrite in QML) and the Haskell backend.  QML code can access these\nsignals and slots on the 'app' context object.  Haskell code can emit\nsignals by using the 'emit' function exported from the generated\nHaskadesBinding.  The 'emit' call is threadsafe.\n\nText, Lazy Text, and String all end up as QString so that QML can\nwork with them properly, and vice-versa.  UTCTime becomes QDateTime.\nInt, Double, and () are passed through fairly directly.  Other types\nmay have support added as there is need.";
        buildType = "Simple";
      };
      components = {
        exes = {
          haskades = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.errors
              hsPkgs.haskell-src
              hsPkgs.text
              hsPkgs.text-format
            ];
          };
        };
      };
    }