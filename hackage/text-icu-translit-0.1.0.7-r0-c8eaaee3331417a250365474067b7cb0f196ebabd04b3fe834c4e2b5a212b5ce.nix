{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "text-icu-translit"; version = "0.1.0.7"; };
      license = "BSD-3-Clause";
      copyright = "2014 Antonio Nikishaev";
      maintainer = "Antonio Nikishaev <me@lelf.lu>";
      author = "Antonio Nikishaev";
      homepage = "";
      url = "";
      synopsis = "ICU transliteration";
      description = "Bindings to the transliteration features by the\nInternational Components for Unicode (ICU) library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        libs = [
          (pkgs."icuuc" or ((hsPkgs.pkgs-errors).sysDepError "icuuc"))
          ] ++ (if system.isWindows
          then [
            (pkgs."icuin" or ((hsPkgs.pkgs-errors).sysDepError "icuin"))
            (pkgs."icudt" or ((hsPkgs.pkgs-errors).sysDepError "icudt"))
            ]
          else [
            (pkgs."icui18n" or ((hsPkgs.pkgs-errors).sysDepError "icui18n"))
            (pkgs."icudata" or ((hsPkgs.pkgs-errors).sysDepError "icudata"))
            ]);
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."text-icu" or ((hsPkgs.pkgs-errors).buildDepError "text-icu"))
            (hsPkgs."text-icu-translit" or ((hsPkgs.pkgs-errors).buildDepError "text-icu-translit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }