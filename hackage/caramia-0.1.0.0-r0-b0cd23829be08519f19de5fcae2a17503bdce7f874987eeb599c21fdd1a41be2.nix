{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "caramia"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2014 Mikko Juola";
      maintainer = "mikjuo@gmail.com";
      author = "Mikko Juola";
      homepage = "https://github.com/Noeda/caramia/";
      url = "";
      synopsis = "Caramia real-time hardware-accelerated rendering library";
      description = "(See README.md in the repository for a more comprehensive description).\n\nThese are low-level, but Haskelly bindings to OpenGL 3.3.\n\nSee 'giveContext' in \"Caramia.Context\" as this is the\nstarting point for using this library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."OpenGLRaw" or ((hsPkgs.pkgs-errors).buildDepError "OpenGLRaw"))
          ];
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."OpenGL" or ((hsPkgs.pkgs-errors).sysDepError "OpenGL"));
        buildable = true;
        };
      tests = {
        "smoke-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."caramia" or ((hsPkgs.pkgs-errors).buildDepError "caramia"))
            (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        "memory-info" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."caramia" or ((hsPkgs.pkgs-errors).buildDepError "caramia"))
            (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
            ];
          buildable = true;
          };
        };
      };
    }