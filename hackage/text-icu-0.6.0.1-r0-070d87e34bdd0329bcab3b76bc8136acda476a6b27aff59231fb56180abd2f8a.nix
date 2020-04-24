{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "text-icu"; version = "0.6.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2009, 2010 Bryan O'Sullivan";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Bindings to the ICU library";
      description = "Haskell bindings to the International Components for\nUnicode (ICU) libraries.  These libraries provide\nrobust and full-featured Unicode services on a wide\nvariety of platforms.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.10") (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"));
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
      };
    }