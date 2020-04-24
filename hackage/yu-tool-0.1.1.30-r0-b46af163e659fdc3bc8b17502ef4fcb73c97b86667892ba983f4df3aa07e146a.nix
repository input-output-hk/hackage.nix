{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yu-tool"; version = "0.1.1.30"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2017-2018 Johann Lee <me@qinka.pro>";
      maintainer = "qinka@live.com";
      author = "Johann Lee";
      homepage = "https://github.com/Qinka/Yu";
      url = "";
      synopsis = "Tool for Yu";
      description = "Tool for Yu";
      buildType = "Simple";
      };
    components = {
      exes = {
        "yu" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."yu-utils" or ((hsPkgs.pkgs-errors).buildDepError "yu-utils"))
            (hsPkgs."yu-auth" or ((hsPkgs.pkgs-errors).buildDepError "yu-auth"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."echo" or ((hsPkgs.pkgs-errors).buildDepError "echo"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }