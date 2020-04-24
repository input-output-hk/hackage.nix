{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hjs"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Mark Wassell 2007";
      maintainer = "Mark Wassell <mwassell@bigpond.net.au>";
      author = "Mark Wassell";
      homepage = "http://www.haskell.org/haskellwiki/Libraries_and_tools/HJS";
      url = "";
      synopsis = "JavaScript Parser";
      description = "A Javascript parser and interpreter.\nWorks as per ECMA-262 plus some parts of JS >=1.5.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = { "hjs" = { buildable = true; }; };
      };
    }