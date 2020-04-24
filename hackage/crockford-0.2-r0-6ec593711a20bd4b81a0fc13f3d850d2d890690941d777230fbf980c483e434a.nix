{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "crockford"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Henry Bucklow";
      maintainer = "Henry Bucklow <henry@elsie.org.uk>";
      author = "Henry Bucklow";
      homepage = "";
      url = "";
      synopsis = "An implementation of Douglas Crockford's base32 encoding.";
      description = "An implementation of Douglas Crockford's base32 encoding.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."digits" or ((hsPkgs.pkgs-errors).buildDepError "digits"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      };
    }