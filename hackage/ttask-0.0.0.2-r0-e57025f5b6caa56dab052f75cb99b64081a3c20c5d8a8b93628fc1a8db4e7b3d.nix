{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ttask"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2016 Tokiwo Ousaka";
      maintainer = "its.out.of.tune.this.my.music@gmail.com";
      author = "Tokiwo Ousaka";
      homepage = "https://github.com/tokiwoousaka/ttask#readme";
      url = "";
      synopsis = "This is task management tool for yourself, that inspired by scrum.";
      description = "Please see README.md (ja)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          ];
        buildable = true;
        };
      exes = {
        "ttask" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."ttask" or ((hsPkgs.pkgs-errors).buildDepError "ttask"))
            (hsPkgs."optparse-declarative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-declarative"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      tests = {
        "ttask-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ttask" or ((hsPkgs.pkgs-errors).buildDepError "ttask"))
            ];
          buildable = true;
          };
        };
      };
    }