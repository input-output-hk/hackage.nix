{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dfrac"; version = "0.1.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "grogers385@gmail.com";
      author = "George Rogers";
      homepage = "";
      url = "";
      synopsis = "A package for precise decimal arithmatic using rationals.";
      description = "A package for precise decimal arithmatic using rationals.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          ];
        buildable = true;
        };
      };
    }