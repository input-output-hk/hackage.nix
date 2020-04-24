{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { build-samples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "lens-regex"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015 Takahiro HIMURA";
      maintainer = "Takahiro HIMURA <taka@himura.jp>";
      author = "Takahiro HIMURA";
      homepage = "https://github.com/himura/lens-regex";
      url = "";
      synopsis = "Lens powered regular expression";
      description = "lens interface for regex-base. Please see the README on Github at <https://github.com/himura/lens-regex#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."regex-base" or ((hsPkgs.pkgs-errors).buildDepError "regex-base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      exes = {
        "sample" = {
          depends = (pkgs.lib).optionals (!(!flags.build-samples)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."lens-regex" or ((hsPkgs.pkgs-errors).buildDepError "lens-regex"))
            (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
            ];
          buildable = if !flags.build-samples then false else true;
          };
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
            ];
          buildable = true;
          };
        };
      };
    }