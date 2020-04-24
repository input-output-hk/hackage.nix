{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "collada-output"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tillmann.Vogt@rwth-aachen.de";
      author = "Tillmann Vogt";
      homepage = "";
      url = "";
      synopsis = "Generate animated 3d objects in COLLADA";
      description = "Generate a COLLADA file with textures, materials, animations, ... It can be used to visualize algorithms that produce a stream of positions, see <http://www.youtube.com/watch?v=ZpJzG28Yv8Y>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."SVGPath" or ((hsPkgs.pkgs-errors).buildDepError "SVGPath"))
          (hsPkgs."collada-types" or ((hsPkgs.pkgs-errors).buildDepError "collada-types"))
          ];
        buildable = true;
        };
      exes = { "Examples" = { buildable = true; }; };
      };
    }