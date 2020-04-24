{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "chiphunk"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Cthulhu (c) 2018";
      maintainer = "cthulhu.den@gmail.com, lemmih@gmail.com";
      author = "Cthulhu";
      homepage = "https://github.com/CthulhuDen/chiphunk#readme";
      url = "";
      synopsis = "Haskell bindings for Chipmunk2D physics engine";
      description = "Please see the README on GitHub at <https://github.com/CthulhuDen/chiphunk#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."StateVar" or ((hsPkgs.pkgs-errors).buildDepError "StateVar"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }