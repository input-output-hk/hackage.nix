{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "artifact"; version = "0.0.0.0"; };
      license = "AGPL-3.0-or-later";
      copyright = "2018 Leif Metcalf";
      maintainer = "Leif Metcalf <me@leif.nz>";
      author = "Leif Metcalf";
      homepage = "https://gitlab.com/leifmetcalf/artifact#readme";
      url = "";
      synopsis = "Basic types and instances for Valve's Artifact Card-set API";
      description = "See README at <https://gitlab.com/leifmetcalf/artifact#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          ];
        };
      };
    }