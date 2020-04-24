{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "mpris"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "matus.goljer@gmail.com";
      author = "Matus Goljer";
      homepage = "http://github.com/Fuco1/mpris";
      url = "";
      synopsis = "Interface for MPRIS";
      description = "This package implements the Media Player Remote Interfacing\nSpecification (MPRIS), a standard D-Bus interface which aims to\nprovide a common programmatic API for controlling media players.\n\nThe DBus specification consists of two main interfaces:\n@org.mpris.MediaPlayer2@ and @org.mpris.MediaPlayer2.Player@ which\nare implemented as modules \"Mpris.MediaPlayer2\" and\n\"Mpris.MediaPlayer2.Player\".\n\nThe full specification can be found at: <http://specifications.freedesktop.org/mpris-spec/latest/index.html>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."dbus" or ((hsPkgs.pkgs-errors).buildDepError "dbus"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }