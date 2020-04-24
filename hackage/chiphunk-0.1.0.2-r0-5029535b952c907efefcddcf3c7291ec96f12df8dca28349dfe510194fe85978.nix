{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { library-only = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "chiphunk"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Cthulhu (c) 2018";
      maintainer = "cthulhu.den@gmail.com";
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
          (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          ];
        buildable = true;
        };
      exes = {
        "chiphunk" = {
          depends = [
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."chiphunk" or ((hsPkgs.pkgs-errors).buildDepError "chiphunk"))
            (hsPkgs."nanovg" or ((hsPkgs.pkgs-errors).buildDepError "nanovg"))
            (hsPkgs."nanovg-simple" or ((hsPkgs.pkgs-errors).buildDepError "nanovg-simple"))
            ];
          buildable = if flags.library-only then false else true;
          };
        };
      };
    }