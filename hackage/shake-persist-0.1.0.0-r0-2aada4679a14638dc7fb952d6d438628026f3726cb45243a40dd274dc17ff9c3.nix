{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "shake-persist"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2016 Dmitry Bogatov";
      maintainer = "Dmitry Bogatov <KAction@gnu.org>";
      author = "Dmitry Bogatov";
      homepage = "https://anonscm.debian.org/cgit/users/kaction-guest/haskell-shake-persist.git";
      url = "";
      synopsis = "Shake build system on-disk caching";
      description = "Please see Development.Shake.Persist and example in source.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."shake" or ((hsPkgs.pkgs-errors).buildDepError "shake"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      exes = {
        "ex.shake-persist" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."shake-persist" or ((hsPkgs.pkgs-errors).buildDepError "shake-persist"))
            (hsPkgs."shake" or ((hsPkgs.pkgs-errors).buildDepError "shake"))
            ];
          buildable = true;
          };
        };
      };
    }