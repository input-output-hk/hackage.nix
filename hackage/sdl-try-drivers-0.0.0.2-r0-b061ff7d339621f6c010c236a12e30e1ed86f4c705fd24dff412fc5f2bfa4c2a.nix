{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sdl-try-drivers"; version = "0.0.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Eric Wolf <ericwolf42@gmail.com>";
      author = "Eric Wolf";
      homepage = "";
      url = "";
      synopsis = "small testing tool for sdl2 and accelerated drivers";
      description = "For each reported driver sdl-try-drivers tries to create a renderer\nand reports success or failure with the catched exception.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "sdl-try-drivers" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
            (hsPkgs."pretty-simple" or ((hsPkgs.pkgs-errors).buildDepError "pretty-simple"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }