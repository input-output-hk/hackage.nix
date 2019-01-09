{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "plot-gtk3"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) A.V.H. McPhail 2014, 2015";
      maintainer = "haskell.vivian.mcphail <at> gmail <dot> com";
      author = "Vivian McPhail";
      homepage = "http://code.haskell.org/plot";
      url = "";
      synopsis = "GTK3 plots and interaction with GHCi";
      description = "Allows use of 'plot' package with GTK3\n\n* Provides a mechanism to display and update plots from GHCi\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.glib)
          (hsPkgs.gtk3)
          (hsPkgs.hmatrix)
          (hsPkgs.plot)
          ];
        };
      };
    }