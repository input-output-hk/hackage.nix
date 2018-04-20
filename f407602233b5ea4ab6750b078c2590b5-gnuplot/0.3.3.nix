{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      buildtests = false;
      buildexamples = false;
      executepipe = false;
      executeshell = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "gnuplot";
          version = "0.3.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://www.haskell.org/haskellwiki/Gnuplot";
        url = "http://code.haskell.org/gnuplot/";
        synopsis = "2D and 3D plots using gnuplot";
        description = "This is a wrapper to gnuplot\nwhich lets you create 2D and 3D plots.\n\nStart a simple session with @make ghci@.\nThis loads the module \"Graphics.Gnuplot.Simple\"\nwhich is ready for use in GHCi.\nIt does not address all fancy gnuplot features\nin order to stay simple.\nFor more sophisticated plots,\nespecially batch generated graphics,\nI recommend \"Graphics.Gnuplot.Advanced\".\n\nWith the Cabal flags executePipe and executeShell\nyou can switch to more convenient\nbut probably less portable ways\nof running gnuplot.\n\nIn the past this was part of the htam package.";
        buildType = "Simple";
      };
      components = {
        gnuplot = {
          depends  = [
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.utility-ht
            hsPkgs.monoid-transformer
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.time
              hsPkgs.old-locale
            ]
            else [ hsPkgs.base ]);
        };
        exes = { gnuplot-demo = {}; };
      };
    }