{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "layouting"; version = "1.1.3"; };
      license = "Apache-2.0";
      copyright = "Copyright (C) 2018 Luna Team";
      maintainer = "Wojciech Danilo <wojciech.danilo@luna-lang.org>";
      author = "Luna Team";
      homepage = "https://github.com/luna/layouting";
      url = "";
      synopsis = "General layouting library. Currently supports layouting 2D areas and can be used as a backend for text pretty printing or automatic windows layouting managers.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."container" or ((hsPkgs.pkgs-errors).buildDepError "container"))
          (hsPkgs."layered-state" or ((hsPkgs.pkgs-errors).buildDepError "layered-state"))
          (hsPkgs."prologue" or ((hsPkgs.pkgs-errors).buildDepError "prologue"))
          (hsPkgs."terminal-text" or ((hsPkgs.pkgs-errors).buildDepError "terminal-text"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }