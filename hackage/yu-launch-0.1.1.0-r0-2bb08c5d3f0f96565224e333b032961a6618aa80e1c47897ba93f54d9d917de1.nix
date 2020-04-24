{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yu-launch"; version = "0.1.1.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2017-2018 Johann Lee <me@qinka.pro>";
      maintainer = "qinka@live.com";
      author = "Johann Lee";
      homepage = "https://github.com/Qinka/Yu";
      url = "";
      synopsis = "The launcher for Yu.";
      description = "The launcher for Yu.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "yu-launch" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."yu-utils" or ((hsPkgs.pkgs-errors).buildDepError "yu-utils"))
            (hsPkgs."yu-auth" or ((hsPkgs.pkgs-errors).buildDepError "yu-auth"))
            (hsPkgs."yu-core" or ((hsPkgs.pkgs-errors).buildDepError "yu-core"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      };
    }