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
        specVersion = "1.6";
        identifier = {
          name = "gnuplot";
          version = "0.5.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://www.haskell.org/haskellwiki/Gnuplot";
        url = "http://code.haskell.org/gnuplot/";
        synopsis = "2D and 3D plots using gnuplot";
        description = "This is a wrapper to gnuplot\nwhich lets you create 2D and 3D plots.\n\nStart a simple session with @make ghci@.\nThis loads the module \"Graphics.Gnuplot.Simple\"\nwhich is ready for use in GHCi.\nIt does not address all fancy gnuplot features\nin order to stay simple.\nFor more sophisticated plots,\nespecially batch generated graphics,\nI recommend \"Graphics.Gnuplot.Advanced\".\nThis module contains also an overview\nof the hierarchy of objects.\n\nExamples for using this interface can be found in the \"Demo\" module.\nIn order to compile this and install an example data file,\nuse the Cabal flag @buildExamples@:\n\n> \$ cabal install -fbuildExamples gnuplot\n\nWith the Cabal flags executePipe and executeShell\nyou can switch to more convenient\nbut probably less portable ways\nof feeding gnuplot with a script.\n\nAlternative packages: @plot@, @HPlot@, @Chart@, @textPlot@, @easyplot@";
        buildType = "Simple";
      };
      components = {
        gnuplot = {
          depends  = [
            hsPkgs.filepath
            hsPkgs.temporary
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.utility-ht
            hsPkgs.data-accessor-transformers
            hsPkgs.data-accessor
            hsPkgs.transformers
            hsPkgs.deepseq
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.process
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.base
            ]
            else [ hsPkgs.base ]);
        };
        exes = {
          gnuplot-demo = {
            depends  = pkgs.lib.optional _flags.buildexamples hsPkgs.filepath;
          };
        };
      };
    }