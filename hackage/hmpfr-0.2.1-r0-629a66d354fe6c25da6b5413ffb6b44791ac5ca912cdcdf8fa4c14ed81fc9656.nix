{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hmpfr"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Aleš Bizjak <ales.bizjak0@gmail.com>";
      author = "Aleš Bizjak";
      homepage = "http://code.haskell.org/hmpfr/";
      url = "";
      synopsis = "Haskell binding to MPFR library";
      description = "Haskell binding to MPFR library. This version is compatible\nonly with 2.4.* and will not work with previous releases\nof the MPFR library.\nSome simple examples of usage can be found in test/Demo.hs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "6.10") [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."integer" or ((hsPkgs.pkgs-errors).buildDepError "integer"))
          ];
        libs = [ (pkgs."mpfr" or ((hsPkgs.pkgs-errors).sysDepError "mpfr")) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }