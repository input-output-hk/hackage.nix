{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "unicode-properties"; version = "3.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ashley Yakeley <ashley@semantic.org>";
      author = "Ashley Yakeley <ashley@semantic.org>";
      homepage = "";
      url = "";
      synopsis = "Unicode 3.2.0 character properties";
      description = "Unicode 3.2.0 character properties";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          ];
        buildable = true;
        };
      };
    }