{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "HROOT-graf"; version = "0.9"; };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Ian-Woo Kim";
      homepage = "http://ianwookim.org/HROOT";
      url = "";
      synopsis = "Haskell binding to ROOT Graf modules";
      description = "HROOT is a haskell Foreign Function Interface (FFI) binding to ROOT. ROOT(http://root.cern.ch) is an object-oriented program and library developed by CERN for physics data analysis.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."fficxx" or ((hsPkgs.pkgs-errors).buildDepError "fficxx"))
          (hsPkgs."fficxx-runtime" or ((hsPkgs.pkgs-errors).buildDepError "fficxx-runtime"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."HROOT-core" or ((hsPkgs.pkgs-errors).buildDepError "HROOT-core"))
          (hsPkgs."HROOT-hist" or ((hsPkgs.pkgs-errors).buildDepError "HROOT-hist"))
          ];
        libs = [
          (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
          ];
        buildable = true;
        };
      };
    }