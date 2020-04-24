{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "wxAsteroids"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Nobody";
      author = "Daan Leijen";
      homepage = "http://www.haskell.org/haskellwiki/wxAsteroids";
      url = "";
      synopsis = "Try to avoid the asteroids with your space ship";
      description = "The Asteroids game, using the wxHaskell GUI, as described in\n\"wxHaskell, A Portable and Concise GUI Library for Haskell\"\nhttp://legacy.cs.uu.nl/daan/download/papers/wxhaskell.pdf";
      buildType = "Simple";
      };
    components = {
      exes = {
        "wxAsteroids" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."wxcore" or ((hsPkgs.pkgs-errors).buildDepError "wxcore"))
            (hsPkgs."wx" or ((hsPkgs.pkgs-errors).buildDepError "wx"))
            ];
          buildable = true;
          };
        };
      };
    }