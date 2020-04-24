{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "GlomeTrace"; version = "0.3"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright 2008,2009 Jim Snow";
      maintainer = "Jim Snow <jsnow@cs.pdx.edu>";
      author = "Jim Snow";
      homepage = "http://www.haskell.org/haskellwiki/Glome";
      url = "";
      synopsis = "Ray Tracing Library";
      description = "A ray tracing library with acceleration structure and many supported primitives.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."GlomeVec" or ((hsPkgs.pkgs-errors).buildDepError "GlomeVec"))
          ];
        buildable = true;
        };
      };
    }