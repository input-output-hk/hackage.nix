{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "ClassyPrelude"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sveina@gmail.com";
      author = "Svein Ove Aas";
      homepage = "";
      url = "";
      synopsis = "Prelude replacement using classes instead of concrete types where reasonable";
      description = "ClassyPrelude is a Prelude for people who know Haskell well. It\nre-exports some commonly imported modules, replaces Prelude\nfunctions with their type-class equivalents where reasonable, and\nremoves some Prelude functions that in my opinion don't belong\nthere.\nThese modules are likely to be incomplete. Suggestions are greatly appreciated.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
          ];
        buildable = true;
        };
      };
    }