{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "hkd-default"; version = "1.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2020 Version Cloud";
      maintainer = "jorah@version.cloud";
      author = "Jorah Gao";
      homepage = "https://github.com/versioncloud/hkd-default#readme";
      url = "";
      synopsis = "Apply default value for optional field of HKD";
      description = "Please see http://hackage.haskell.org/package/hkd-default";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "hkd-default-test" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hkd-default" or ((hsPkgs.pkgs-errors).buildDepError "hkd-default"))
            ];
          buildable = true;
          };
        };
      };
    }