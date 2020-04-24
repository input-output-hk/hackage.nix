{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gooey"; version = "0.0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "efsubenovex@gmail.com";
      author = "Schell Scivally";
      homepage = "";
      url = "";
      synopsis = "Graphical user interfaces that are renderable,\nchange over time and eventually produce a value.";
      description = "Gooey provides a monadic interface on top of automaton\nbased FRP. It is targeted towards controlling renderable\ninterfaces that eventually produce values.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."varying" or ((hsPkgs.pkgs-errors).buildDepError "varying"))
          (hsPkgs."renderable" or ((hsPkgs.pkgs-errors).buildDepError "renderable"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          ];
        buildable = true;
        };
      };
    }