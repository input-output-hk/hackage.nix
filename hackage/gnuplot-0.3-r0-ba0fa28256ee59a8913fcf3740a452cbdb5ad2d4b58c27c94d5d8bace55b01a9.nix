{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      splitbase = true;
      buildtests = false;
      executepipe = false;
      executeshell = false;
      };
    package = {
      specVersion = "1.2";
      identifier = { name = "gnuplot"; version = "0.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Gnuplot";
      url = "http://code.haskell.org/gnuplot/";
      synopsis = "2D and 3D plots using gnuplot";
      description = "This is a wrapper to gnuplot\nwhich lets you create 2D and 3D plots.\n\nWith the Cabal flags executePipe and executeShell\nyou can switch to more convenient\nbut probably less portable ways\nof running gnuplot.\n\nStart a simple session with @make ghci@.\n\nIn the past this was part of the htam package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.utility-ht) ] ++ (if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            ]
          else [ (hsPkgs.base) ]);
        };
      };
    }