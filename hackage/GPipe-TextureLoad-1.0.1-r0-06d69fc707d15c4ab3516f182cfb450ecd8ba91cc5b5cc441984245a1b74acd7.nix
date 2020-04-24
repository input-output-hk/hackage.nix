{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "GPipe-TextureLoad"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Tobias Bexelius";
      maintainer = "Tobias Bexelius";
      author = "Tobias Bexelius";
      homepage = "http://www.haskell.org/haskellwiki/GPipe";
      url = "";
      synopsis = "Load GPipe textures from filesystem";
      description = "The functions of this package helps loading GPipe textures from file. It is based on the stb-image package, and supports subsets of the JPG, PNG, TGA, BMP and PSD formats.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."GPipe" or ((hsPkgs.pkgs-errors).buildDepError "GPipe"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."stb-image" or ((hsPkgs.pkgs-errors).buildDepError "stb-image"))
          (hsPkgs."bitmap" or ((hsPkgs.pkgs-errors).buildDepError "bitmap"))
          ];
        buildable = true;
        };
      };
    }