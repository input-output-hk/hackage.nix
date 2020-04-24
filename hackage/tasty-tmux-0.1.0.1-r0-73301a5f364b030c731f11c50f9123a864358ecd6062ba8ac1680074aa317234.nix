{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tasty-tmux"; version = "0.1.0.1"; };
      license = "AGPL-3.0-only";
      copyright = "Copyright 2017-2019  Róman Joost and Fraser Tweedale";
      maintainer = "roman@bromeco.de";
      author = "Róman Joost and Fraser Tweedale";
      homepage = "https://github.com/purebred-mua/tasty-tmux";
      url = "";
      synopsis = "Terminal user acceptance testing (UAT) via tmux";
      description = "Library for user acceptance testing (UAT) using tmux as the\nvehicle for running programs and interacting with them.\n\nSee \"Test.Tasty.Tmux\" for usage examples and API documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."typed-process" or ((hsPkgs.pkgs-errors).buildDepError "typed-process"))
          (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
          (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
          (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
          ];
        buildable = true;
        };
      };
    }