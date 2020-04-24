{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tmapmvar"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2017 Athan Clark";
      maintainer = "athan.clark@gmail.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/tmapmvar#readme";
      url = "";
      synopsis = "A single-entity stateful Map in STM, similar to tmapchan";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      };
    }