{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "miniplex"; version = "0.2.2"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Lukas Mai <l.mai@web.de>";
      author = "Lukas Mai";
      homepage = "";
      url = "";
      synopsis = "simple 1-to-N interprocess communication";
      description = "This module provides interprocess communication channels. This is meant\nto be used by logger-like programs that want to send status reports to\nN listeners (where N >= 0).";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ] ++ (pkgs.lib).optional (flags.small_base) (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"));
        buildable = true;
        };
      exes = {
        "plox-read" = { buildable = true; };
        "plox-write" = { buildable = true; };
        };
      };
    }