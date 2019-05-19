{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "cellrenderer-cairo"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jwlato@gmail.com";
      author = "John W. Lato";
      homepage = "";
      url = "";
      synopsis = "Cairo-based CellRenderer";
      description = "A CellRenderer instance that allows for arbitrary Cairo\nrendering functions to render each item in a TreeView.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.glib)
          (hsPkgs.gtk)
          (hsPkgs.cairo)
          (hsPkgs.mtl)
          ];
        pkgconfig = [ (pkgconfPkgs."gtk+-2.0") ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs))
          ];
        };
      };
    }