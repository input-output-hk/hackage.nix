{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "simple-logging"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2017 Luka Horvat";
      maintainer = "luka.horvat9@gmail.com";
      author = "Luka Horvat";
      homepage = "https://gitlab.com/haskell-hr/logging";
      url = "";
      synopsis = "Logging effect to plug into the simple-effects framework";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."iso8601-time" or ((hsPkgs.pkgs-errors).buildDepError "iso8601-time"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."simple-effects" or ((hsPkgs.pkgs-errors).buildDepError "simple-effects"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."string-conv" or ((hsPkgs.pkgs-errors).buildDepError "string-conv"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          ];
        buildable = true;
        };
      tests = {
        "logging-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."logging" or ((hsPkgs.pkgs-errors).buildDepError "logging"))
            (hsPkgs."simple-effects" or ((hsPkgs.pkgs-errors).buildDepError "simple-effects"))
            ];
          buildable = true;
          };
        };
      };
    }