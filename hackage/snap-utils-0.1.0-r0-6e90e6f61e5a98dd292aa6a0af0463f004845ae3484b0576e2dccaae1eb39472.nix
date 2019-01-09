{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "snap-utils"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Luke Hoersten <luke@hoersten.org>";
      author = "Luke Hoersten";
      homepage = "https://github.com/LukeHoersten/snap-utils";
      url = "";
      synopsis = "Snap Framework utility funtions.";
      description = "Utilities for Snap Framework apps.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.MonadCatchIO-transformers)
          (hsPkgs.mtl)
          (hsPkgs.xmlhtml)
          (hsPkgs.snap)
          (hsPkgs.snap-core)
          (hsPkgs.heist)
          (hsPkgs.http-types)
          (hsPkgs.text)
          ];
        };
      };
    }