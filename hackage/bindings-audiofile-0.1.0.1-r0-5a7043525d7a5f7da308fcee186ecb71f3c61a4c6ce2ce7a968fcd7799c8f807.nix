{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "bindings-audiofile"; version = "0.1.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "PHO <pho at cielonegro dot org>";
      author = "PHO <pho at cielonegro dot org>";
      homepage = "http://cielonegro.org/Bindings-AudioFile.html";
      url = "";
      synopsis = "Low level bindings to audiofile";
      description = "Bindings to audiofile: <http://www.68k.org/~michael/audiofile/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bindings-DSL" or ((hsPkgs.pkgs-errors).buildDepError "bindings-DSL"))
          ];
        pkgconfig = [
          (pkgconfPkgs."audiofile" or ((hsPkgs.pkgs-errors).pkgConfDepError "audiofile"))
          ];
        buildable = true;
        };
      };
    }