{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "MusicBrainz-libdiscid"; version = "0.4.1.0"; };
      license = "LicenseRef-LGPL";
      copyright = "2013 André Twupack";
      maintainer = "André Twupack";
      author = "André Twupack";
      homepage = "https://github.com/atwupack/MusicBrainz-libdiscid";
      url = "";
      synopsis = "Binding to libdiscid by MusicBrainz";
      description = "Binding to libdiscid by MusicBrainz.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."winmm" or ((hsPkgs.pkgs-errors).sysDepError "winmm"));
        buildable = true;
        };
      };
    }