{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hbro"; version = "0.4.6"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "koral at mailoo dot org";
      author = "koral";
      homepage = "";
      url = "";
      synopsis = "A suckless minimal KISSy browser";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.webkit)
          (hsPkgs.glib)
          (hsPkgs.gtk)
          (hsPkgs.glade)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.dyre)
          (hsPkgs.process)
          (hsPkgs.url)
          (hsPkgs.zeromq-haskell)
          (hsPkgs.bytestring)
          (hsPkgs.unix)
          ];
        };
      exes = {
        "hbro" = {
          depends = [
            (hsPkgs.hbro)
            (hsPkgs.base)
            (hsPkgs.glib)
            (hsPkgs.gtk)
            (hsPkgs.pango)
            (hsPkgs.process)
            (hsPkgs.unix)
            (hsPkgs.webkit)
            ];
          };
        };
      };
    }