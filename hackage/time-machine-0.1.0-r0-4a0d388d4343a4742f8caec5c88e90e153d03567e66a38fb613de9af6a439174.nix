{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "time-machine"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2017 TAKAHASHI Yuto";
      maintainer = "TAKAHASHI Yuto <ytaka23dev@gmail.com>";
      author = "TAKAHASHI Yuto <ytaka23dev@gmail.com>";
      homepage = "https://github.com/y-taka-23/time-machine#readme";
      url = "";
      synopsis = "A library to mock the current time.";
      description = "A library to mock the current time and relevant IO functions\nby using a type class.\nYou can get the great command of the current time in UTC,\ntime zones, and the speed of time.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."tz" or ((hsPkgs.pkgs-errors).buildDepError "tz"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."tz" or ((hsPkgs.pkgs-errors).buildDepError "tz"))
            (hsPkgs."time-machine" or ((hsPkgs.pkgs-errors).buildDepError "time-machine"))
            ];
          buildable = true;
          };
        };
      };
    }