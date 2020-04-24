{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "fused-effects-readline"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Rob Rix";
      maintainer = "rob.rix@me.com";
      author = "Rob Rix";
      homepage = "https://github.com/fused-effects/fused-effects-readline";
      url = "";
      synopsis = "A readline-like effect and carrier for fused-effects";
      description = "A readline-like effect and carrier for fused-effects, using haskeline under the hood";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."fused-effects" or ((hsPkgs.pkgs-errors).buildDepError "fused-effects"))
          (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
          (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
          (hsPkgs."prettyprinter-ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter-ansi-terminal"))
          (hsPkgs."terminal-size" or ((hsPkgs.pkgs-errors).buildDepError "terminal-size"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."fused-effects-readline" or ((hsPkgs.pkgs-errors).buildDepError "fused-effects-readline"))
            ];
          buildable = true;
          };
        };
      };
    }