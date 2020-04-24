{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.2";
      identifier = { name = "opentheory-byte"; version = "1.124"; };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
      author = "Joe Leslie-Hurd <joe@gilith.com>";
      homepage = "";
      url = "";
      synopsis = "Bytes";
      description = "Bytes - this package was automatically generated from the OpenTheory\npackage byte-1.124";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."opentheory-primitive" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-primitive"))
          (hsPkgs."opentheory" or ((hsPkgs.pkgs-errors).buildDepError "opentheory"))
          (hsPkgs."opentheory-bits" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-bits"))
          (hsPkgs."opentheory-probability" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-probability"))
          ];
        buildable = true;
        };
      };
    }