{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { base4 = true; debug = false; };
    package = {
      specVersion = "1.4";
      identifier = { name = "uni-util"; version = "2.2.1.0"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Christian.Maeder@dfki.de";
      author = "uniform@informatik.uni-bremen.de";
      homepage = "http://www.informatik.uni-bremen.de/uniform/wb/";
      url = "";
      synopsis = "Utilities for the uniform workbench";
      description = "This package contains various miscellaneous utilities used for the\nold HTk- und uDrawGraph bindings as well as for the MMiSS Workbench.\nThey are kept for compatibility reason and put on hackage to ease\ninstallation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
          (hsPkgs.directory)
          (hsPkgs.network)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.array)
          (hsPkgs.old-time)
          ] ++ (pkgs.lib).optional (flags.base4) (hsPkgs.ghc-prim);
        };
      };
    }