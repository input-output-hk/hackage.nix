{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hspresent"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 by Evan Klitzke";
      maintainer = "Evan Klitzke <evan@eklitzke.org>";
      author = "Evan Klitzke";
      homepage = "";
      url = "";
      synopsis = "A terminal presentation tool";
      description = "Give fancy presentations in your terminal.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
          ];
        buildable = true;
        };
      exes = { "hspresent" = { buildable = true; }; };
      };
    }