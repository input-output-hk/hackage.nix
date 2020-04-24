{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "liboath-hs"; version = "0.0.1.1"; };
      license = "GPL-3.0-only";
      copyright = "2017 Matt Parsons";
      maintainer = "parsonsmatt@gmail.com";
      author = "Matt Parsons";
      homepage = "https://github.com/parsonsmatt/liboath-hs#readme";
      url = "";
      synopsis = "Bindings to liboath";
      description = "See README for details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."inline-c" or ((hsPkgs.pkgs-errors).buildDepError "inline-c"))
          (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        libs = [ (pkgs."oath" or ((hsPkgs.pkgs-errors).sysDepError "oath")) ];
        pkgconfig = [
          (pkgconfPkgs."liboath" or ((hsPkgs.pkgs-errors).pkgConfDepError "liboath"))
          ];
        buildable = true;
        };
      exes = {
        "oathtool-hs" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."liboath-hs" or ((hsPkgs.pkgs-errors).buildDepError "liboath-hs"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      tests = {
        "liboath-hs-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."liboath-hs" or ((hsPkgs.pkgs-errors).buildDepError "liboath-hs"))
            ];
          buildable = true;
          };
        };
      };
    }