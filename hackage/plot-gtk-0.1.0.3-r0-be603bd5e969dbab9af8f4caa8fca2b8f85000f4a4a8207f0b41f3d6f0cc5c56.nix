{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "plot-gtk";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) A.V.H. McPhail 2010";
      maintainer = "haskell.vivian.mcphail <at> gmail <dot> com";
      author = "Vivian McPhail";
      homepage = "http://code.haskell.org/plot";
      url = "";
      synopsis = "GTK plots and interaction with GHCi";
      description = "Allows use of 'plot' package with GTK\n\n* Provides a mechanism to display and update plots from GHCi\n";
      buildType = "Simple";
    };
    components = {
      "plot-gtk" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.glib)
          (hsPkgs.gtk)
          (hsPkgs.hmatrix)
          (hsPkgs.plot)
        ];
      };
    };
  }