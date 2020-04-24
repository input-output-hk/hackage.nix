{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "alarmclock"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) David Turner 2014";
      maintainer = "dave.c.turner@gmail.com";
      author = "David Turner";
      homepage = "https://bitbucket.org/davecturner/alarmclock";
      url = "";
      synopsis = "Wake up and perform an action at a certain time.";
      description = "Wake up and perform an action at a certain time.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."timeout" or ((hsPkgs.pkgs-errors).buildDepError "timeout"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."alarmclock" or ((hsPkgs.pkgs-errors).buildDepError "alarmclock"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }