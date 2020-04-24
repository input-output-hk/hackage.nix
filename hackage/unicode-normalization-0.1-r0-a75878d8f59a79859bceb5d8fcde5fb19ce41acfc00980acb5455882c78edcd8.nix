{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "unicode-normalization"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "reinier.lamers@phil.uu.nl";
      author = "Reinier Lamers";
      homepage = "http://sloompie.reinier.de/unicode-normalization/";
      url = "";
      synopsis = "Unicode normalization using the ICU library";
      description = "Unicode normalization using the ICU library";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = if flags.split-base
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."compact-string" or ((hsPkgs.pkgs-errors).buildDepError "compact-string"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."compact-string" or ((hsPkgs.pkgs-errors).buildDepError "compact-string"))
            ];
        libs = [ (pkgs."icuuc" or ((hsPkgs.pkgs-errors).sysDepError "icuuc")) ];
        buildable = true;
        };
      };
    }