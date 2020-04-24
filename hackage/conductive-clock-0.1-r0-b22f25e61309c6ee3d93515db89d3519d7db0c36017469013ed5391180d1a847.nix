{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "conductive-clock"; version = "0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "renick@gmail.com";
      author = "Renick Bell";
      homepage = "http://www.renickbell.net/doku.php?id=conductive-clock";
      url = "";
      synopsis = "a library for displaying musical time in a terminal-based clock";
      description = "This library is for generating strings containing clock time, sending them across OSC, and displaying them in a terminal. In addition to the library functions, it contains a sample executable for displaying musical time in a terminal-based clock.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."conductive-base" or ((hsPkgs.pkgs-errors).buildDepError "conductive-base"))
          (hsPkgs."hosc" or ((hsPkgs.pkgs-errors).buildDepError "hosc"))
          (hsPkgs."parseargs" or ((hsPkgs.pkgs-errors).buildDepError "parseargs"))
          (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
          ];
        buildable = true;
        };
      };
    }