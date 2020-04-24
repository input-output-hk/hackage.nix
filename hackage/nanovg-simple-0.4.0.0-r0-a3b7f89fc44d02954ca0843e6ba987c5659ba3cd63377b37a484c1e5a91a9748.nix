{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { library-only = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "nanovg-simple"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Cthulhu (c) 2018";
      maintainer = "cthulhu.den@gmail.com";
      author = "Cthulhu";
      homepage = "https://github.com/CthulhuDen/nanovg-simple#readme";
      url = "";
      synopsis = "Simple interface to rendering with NanoVG";
      description = "Please see the README on GitHub at <https://github.com/CthulhuDen/nanovg-simple#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."GLFW-b" or ((hsPkgs.pkgs-errors).buildDepError "GLFW-b"))
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
          (hsPkgs."nanovg" or ((hsPkgs.pkgs-errors).buildDepError "nanovg"))
          (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "nanovg-simple" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."nanovg" or ((hsPkgs.pkgs-errors).buildDepError "nanovg"))
            (hsPkgs."nanovg-simple" or ((hsPkgs.pkgs-errors).buildDepError "nanovg-simple"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = if flags.library-only then false else true;
          };
        };
      };
    }