{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tokstyle"; version = "0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "iphydf@users.noreply.github.com";
      author = "iphydf";
      homepage = "https://toktok.github.io/tokstyle";
      url = "";
      synopsis = "TokTok C code style checker";
      description = "TokTok C code style checker";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."language-c" or ((hsPkgs.pkgs-errors).buildDepError "language-c"))
          ];
        buildable = true;
        };
      exes = {
        "check-c" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tokstyle" or ((hsPkgs.pkgs-errors).buildDepError "tokstyle"))
            ];
          buildable = true;
          };
        "check-cimple" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tokstyle" or ((hsPkgs.pkgs-errors).buildDepError "tokstyle"))
            ];
          buildable = true;
          };
        };
      };
    }