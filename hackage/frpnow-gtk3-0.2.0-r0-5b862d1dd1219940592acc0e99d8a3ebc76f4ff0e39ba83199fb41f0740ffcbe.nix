{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "frpnow-gtk3";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "george.steel@gmail.com";
      author = "George Steel, Atze van der Ploeg";
      homepage = "https://github.com/george-steel/frpnow-gtk3";
      url = "";
      synopsis = "Program GUIs with GTK3 and frpnow!";
      description = "High-level interface for GTK3 with FRPNow integration. The module \"Control.FRPNow.GTK.Core\" is a port of the original frpnow-gtk package providing low-level interop getween GTK and FRPNow while the other modules provide high-level UI functionality with FRPNow integration already built in.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.frpnow)
          (hsPkgs.glib)
          (hsPkgs.gtk3)
          (hsPkgs.text)
        ];
      };
    };
  }