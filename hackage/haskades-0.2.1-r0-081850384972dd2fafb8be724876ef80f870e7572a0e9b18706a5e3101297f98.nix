{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "haskades"; version = "0.2.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "© 2012-2013 Stephen Paul Weber";
      maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      homepage = "http://github.com/singpolyma/haskades";
      url = "";
      synopsis = "Utility to generate bindings for BlackBerry Cascades";
      description = "Autogeneration of bindings for creating BlackBerry Cascades apps\nwith Haskell back ends.\n\nRun as:\n\n> ./haskades HaskadesBinding.hs haskades_run.cpp haskades_run.h < Types.hs\n\nWhere Types.hs is a Haskell file containing a a sum type declaration\nnamed 'SignalToUI' and another named 'SignalFromUI'  which fully\nspecify the communication possible between the UI layer (which you\nwrite in QML) and the Haskell backend.  QML code can access these\nsignals on the 'app' context object.  Haskell code can emit\nsignals by using the 'emit' function exported from the generated\nHaskadesBinding.  The 'emit' call is threadsafe.\n\nText, Lazy Text, and String all end up as QString so that QML can\nwork with them properly, and vice-versa.  UTCTime becomes QDateTime.\nInt, Double, and () are passed through fairly directly.  Other types\nmay have support added as there is need.\n\nA simple example lives at <https://github.com/singpolyma/haskades-sample>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "haskades" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.errors)
            (hsPkgs.haskell-src)
            (hsPkgs.text)
            (hsPkgs.text-format)
            ];
          };
        };
      };
    }