{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "shake-pack"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "luke@hoersten.org";
      author = "Luke Hoersten";
      homepage = "https://github.com/LukeHoersten/shake-pack";
      url = "";
      synopsis = "Shake File Pack Rule";
      description = "Shake rule for tar-ing and compressing files with bzip2.\nUses bz2 C library on the system.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bzlib)
          (hsPkgs.shake)
          (hsPkgs.tar)
          ];
        };
      };
    }