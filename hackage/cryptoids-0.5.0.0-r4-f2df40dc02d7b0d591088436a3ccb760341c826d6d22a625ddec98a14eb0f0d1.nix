{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cryptoids"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gregor Kleen <aethoago@141.li>";
      author = "Gregor Kleen <aethoago@141.li>";
      homepage = "";
      url = "";
      synopsis = "Reversable and secure encoding of object ids as a bytestring";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cryptoids-class" or ((hsPkgs.pkgs-errors).buildDepError "cryptoids-class"))
          (hsPkgs."cryptoids-types" or ((hsPkgs.pkgs-errors).buildDepError "cryptoids-types"))
          (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."memory" or ((hsPkgs.pkgs-errors).buildDepError "memory"))
          ];
        buildable = true;
        };
      };
    }