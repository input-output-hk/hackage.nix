{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { build-examples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hsc3-process"; version = "0.10.0"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) Stefan Kersten and others 2008-2013";
      maintainer = "kaoskorobase@gmail.com";
      author = "Stefan Kersten, Rohan Drape";
      homepage = "https://github.com/kaoskorobase/hsc3-process";
      url = "";
      synopsis = "Create and control scsynth processes";
      description = "This library allows to create and control scsynth processes.\n\nChangeLog: <https://github.com/kaoskorobase/hsc3-process/blob/master/ChangeLog.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."hosc" or ((hsPkgs.pkgs-errors).buildDepError "hosc"))
          (hsPkgs."hsc3" or ((hsPkgs.pkgs-errors).buildDepError "hsc3"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."time-compat" or ((hsPkgs.pkgs-errors).buildDepError "time-compat"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "hsc3-sine" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."hosc" or ((hsPkgs.pkgs-errors).buildDepError "hosc"))
            (hsPkgs."hsc3" or ((hsPkgs.pkgs-errors).buildDepError "hsc3"))
            (hsPkgs."hsc3-process" or ((hsPkgs.pkgs-errors).buildDepError "hsc3-process"))
            ];
          buildable = if flags.build-examples then true else false;
          };
        "hsc3-nrt" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."hosc" or ((hsPkgs.pkgs-errors).buildDepError "hosc"))
            (hsPkgs."hsc3" or ((hsPkgs.pkgs-errors).buildDepError "hsc3"))
            (hsPkgs."hsc3-process" or ((hsPkgs.pkgs-errors).buildDepError "hsc3-process"))
            ];
          buildable = if flags.build-examples then true else false;
          };
        };
      };
    }