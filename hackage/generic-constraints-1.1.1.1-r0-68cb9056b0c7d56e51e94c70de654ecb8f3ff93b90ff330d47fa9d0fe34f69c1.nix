{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "generic-constraints"; version = "1.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yairchu@gmail.com";
      author = "Sjoerd Visscher,\nXia Li-yao,\nYair Chuchem";
      homepage = "https://github.com/yairchu/generic-constraints";
      url = "";
      synopsis = "Constraints via Generic";
      description = "Standalone deriving without boiler-plate";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."th-abstraction" or ((hsPkgs.pkgs-errors).buildDepError "th-abstraction"))
          ];
        buildable = true;
        };
      tests = {
        "unittests" = {
          depends = [
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."generic-constraints" or ((hsPkgs.pkgs-errors).buildDepError "generic-constraints"))
            ];
          buildable = true;
          };
        };
      };
    }