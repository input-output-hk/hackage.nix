{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "logging-effect-extra-handler";
        version = "2.0.0";
        };
      license = "MIT";
      copyright = "";
      maintainer = "Jason Shipman";
      author = "Jason Shipman";
      homepage = "https://github.com/jship/logging-effect-extra#readme";
      url = "";
      synopsis = "Handy logging handler combinators";
      description = "Handy logging handler combinators.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."logging-effect" or ((hsPkgs.pkgs-errors).buildDepError "logging-effect"))
          (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "iso8601-handler" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."logging-effect" or ((hsPkgs.pkgs-errors).buildDepError "logging-effect"))
            (hsPkgs."logging-effect-extra-handler" or ((hsPkgs.pkgs-errors).buildDepError "logging-effect-extra-handler"))
            (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
            ];
          buildable = true;
          };
        "iso8601plus-handler" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."logging-effect" or ((hsPkgs.pkgs-errors).buildDepError "logging-effect"))
            (hsPkgs."logging-effect-extra-handler" or ((hsPkgs.pkgs-errors).buildDepError "logging-effect-extra-handler"))
            (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
            ];
          buildable = true;
          };
        "rfc822-handler" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."logging-effect" or ((hsPkgs.pkgs-errors).buildDepError "logging-effect"))
            (hsPkgs."logging-effect-extra-handler" or ((hsPkgs.pkgs-errors).buildDepError "logging-effect-extra-handler"))
            (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
            ];
          buildable = true;
          };
        "route-handler" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."logging-effect" or ((hsPkgs.pkgs-errors).buildDepError "logging-effect"))
            (hsPkgs."logging-effect-extra-handler" or ((hsPkgs.pkgs-errors).buildDepError "logging-effect-extra-handler"))
            (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
            ];
          buildable = true;
          };
        "route-handler-with-iso8601" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."logging-effect" or ((hsPkgs.pkgs-errors).buildDepError "logging-effect"))
            (hsPkgs."logging-effect-extra-handler" or ((hsPkgs.pkgs-errors).buildDepError "logging-effect-extra-handler"))
            (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
            ];
          buildable = true;
          };
        };
      };
    }