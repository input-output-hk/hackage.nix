{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rings"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chris.mckinlay@gmail.com";
      author = "Chris McKinlay";
      homepage = "https://github.com/cmk/algebras";
      url = "";
      synopsis = "basic algebra";
      description = "Groups, rings, and semirings.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."contravariant" or ((hsPkgs.pkgs-errors).buildDepError "contravariant"))
          (hsPkgs."property" or ((hsPkgs.pkgs-errors).buildDepError "property"))
          (hsPkgs."semigroupoids" or ((hsPkgs.pkgs-errors).buildDepError "semigroupoids"))
          ];
        buildable = true;
        };
      };
    }