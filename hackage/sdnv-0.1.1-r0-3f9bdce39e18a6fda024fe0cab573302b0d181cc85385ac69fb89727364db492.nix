{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sdnv"; version = "0.1.1"; };
      license = "BSD-2-Clause";
      copyright = "Lana Black";
      maintainer = "Lana Black <lanablack@amok.cc>";
      author = "Lana Black";
      homepage = "";
      url = "";
      synopsis = "Self-delimiting numeric values encoding library";
      description = "Self-delimiting numeric values decoding/encoding implementation conformant with RFC6256.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }