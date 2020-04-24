{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "marionetta"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "paolo.veronelli@gmail.com";
      author = "Paolo Veronelli";
      homepage = "https://github.com/paolino/marionetta";
      url = "";
      synopsis = "A study of marionetta movements.";
      description = "An opengl application to make animations with marionetta-like structures. Actually only marionetta placement is implemented. Mouse movements are now intended with at least a button pressed. Future versions of gloss may resolve the issue. A patch is distributed to change this issue in gloss package.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "marionetta" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            ];
          buildable = true;
          };
        };
      };
    }