{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      splitbase = true;
      buildtests = false;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "gnuplot";
        version = "0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://code.haskell.org/gnuplot/";
      url = "";
      synopsis = "2D and 3D plots using GNUPlot";
      description = "This is a wrapper to GNUPlot\nwhich lets you create 2D and 3D plots.\n\nIn the past this was part of the htam package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.time)
            (hsPkgs.old-locale)
          ]
          else [ (hsPkgs.base) ];
      };
    };
  }