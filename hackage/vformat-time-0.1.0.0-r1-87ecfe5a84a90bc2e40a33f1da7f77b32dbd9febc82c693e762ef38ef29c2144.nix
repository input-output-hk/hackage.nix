{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "vformat-time"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2020 Version Cloud";
      maintainer = "jorah@version.cloud";
      author = "Jorah Gao";
      homepage = "https://github.com/versioncloud/vformat-time#readme";
      url = "";
      synopsis = "Extend vformat to time datatypes";
      description = "Please see http://hackage.haskell.org/package/vformat-time";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."vformat" or ((hsPkgs.pkgs-errors).buildDepError "vformat"))
          ];
        buildable = true;
        };
      tests = {
        "vformat-time-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."vformat" or ((hsPkgs.pkgs-errors).buildDepError "vformat"))
            (hsPkgs."vformat-time" or ((hsPkgs.pkgs-errors).buildDepError "vformat-time"))
            ];
          buildable = true;
          };
        };
      };
    }