{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "GPipe-Collada"; version = "0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "Tobias Bexelius";
      maintainer = "Tobias Bexelius";
      author = "Tobias Bexelius";
      homepage = "http://www.haskell.org/haskellwiki/GPipe";
      url = "http://hackage.haskell.org/package/GPipe-Collada";
      synopsis = "Load GPipe meshes from Collada files";
      description = "This package provides data types for a Collada scene graph including geometries, cameras and lights that may be loaded from\nCollada (dae) files. Geometries are represented by GPipe PrimitiveStreams. A utility module is included that include traverse helpers\nand render functions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."GPipe" or ((hsPkgs.pkgs-errors).buildDepError "GPipe"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."HaXml" or ((hsPkgs.pkgs-errors).buildDepError "HaXml"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."Vec" or ((hsPkgs.pkgs-errors).buildDepError "Vec"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }