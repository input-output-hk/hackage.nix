{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "general-prelude"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "johnw@newartisans.com";
      author = "John Wiegley, Svein Ove Aas";
      homepage = "";
      url = "";
      synopsis = "Prelude replacement using generalized type classes where possible";
      description = "This Prelude prefers more general and performance-oriented types,\nsuch as Category, Foldable, Traversable, Data.Text and Control.Lens.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."pointless-fun" or ((hsPkgs.pkgs-errors).buildDepError "pointless-fun"))
          (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
          (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
          ];
        buildable = true;
        };
      };
    }