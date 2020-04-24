{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hsdip"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Evan Martin <martine@danga.com>";
      author = "Evan Martin";
      homepage = "http://neugierig.org/software/darcs/hsdip/";
      url = "";
      synopsis = "hsdip - a Diplomacy parser/renderer";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
          (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
          ];
        buildable = true;
        };
      exes = { "hsdip" = { buildable = true; }; };
      };
    }