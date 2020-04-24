{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "logging-facade-journald"; version = "0.0.0"; };
      license = "MIT";
      copyright = "(c) 2014 Zalora South East Asia Pte Ltd";
      maintainer = "Sönke Hahn <SoenkeHahn@gmail.com>";
      author = "Sönke Hahn <SoenkeHahn@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Journald back-end for logging-facade";
      description = "Journald back-end for logging-facade";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."libsystemd-journal" or ((hsPkgs.pkgs-errors).buildDepError "libsystemd-journal"))
          (hsPkgs."logging-facade" or ((hsPkgs.pkgs-errors).buildDepError "logging-facade"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."logging-facade" or ((hsPkgs.pkgs-errors).buildDepError "logging-facade"))
            (hsPkgs."libsystemd-journal" or ((hsPkgs.pkgs-errors).buildDepError "libsystemd-journal"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }