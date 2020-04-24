{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "TigerHash"; version = "0.2"; };
      license = "GPL-2.0-only";
      copyright = "(c) 2010 Nikolay Orlyuk";
      maintainer = "virkony@gmail.com";
      author = "Nikolay Orlyuk";
      homepage = "";
      url = "";
      synopsis = "TigerHash with C implementation";
      description = "This library provides Tiger Hash algorithm implemented in C\nand built with Haskell interface. As well there is implementation\nof Merkle Tree known as TTH (Tiger Tree Hash).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."dataenc" or ((hsPkgs.pkgs-errors).buildDepError "dataenc"))
          ];
        buildable = true;
        };
      };
    }