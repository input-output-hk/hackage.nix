{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dcpu16"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2016 Anatoly Krivolapov";
      maintainer = "example@example.com";
      author = "Anatoly Krivolapov";
      homepage = "https://github.com/anatolat/dcpu16#readme";
      url = "";
      synopsis = "DCPU-16 Emulator & Assembler";
      description = "DCPU-16 Emulator & Assembler";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."spool" or ((hsPkgs.pkgs-errors).buildDepError "spool"))
          ];
        buildable = true;
        };
      exes = {
        "dcpu16-exe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."dcpu16" or ((hsPkgs.pkgs-errors).buildDepError "dcpu16"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      tests = {
        "dcpu16-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."dcpu16" or ((hsPkgs.pkgs-errors).buildDepError "dcpu16"))
            ];
          buildable = true;
          };
        };
      };
    }