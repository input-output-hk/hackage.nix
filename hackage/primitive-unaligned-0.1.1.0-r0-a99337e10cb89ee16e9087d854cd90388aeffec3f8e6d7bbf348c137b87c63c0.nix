{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "primitive-unaligned"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "Andrew Martin <andrew.thaddeus@gmail.com>";
      author = "Andrew Martin";
      homepage = "https://github.com/haskell-primitive/primitive-unaligned";
      url = "";
      synopsis = "Unaligned access to primitive arrays";
      description = "Unaligned access to primitive arrays. The offsets are given in bytes rather than elements.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          ];
        buildable = true;
        };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."primitive-unaligned" or ((hsPkgs.pkgs-errors).buildDepError "primitive-unaligned"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            ];
          buildable = true;
          };
        };
      };
    }