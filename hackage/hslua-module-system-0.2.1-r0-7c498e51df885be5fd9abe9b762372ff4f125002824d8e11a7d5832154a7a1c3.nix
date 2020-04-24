{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hslua-module-system"; version = "0.2.1"; };
      license = "MIT";
      copyright = "Albert Krewinkel <albert+hslua@zeitkraut.de>";
      maintainer = "albert+hslua@zeitkraut.de";
      author = "Albert Krewinkel";
      homepage = "https://github.com/hslua/hslua-module-system";
      url = "";
      synopsis = "Lua module wrapper around Haskell's System module.";
      description = "Provides access to system information and functionality\nto Lua scripts via Haskell's `System` module.\n\nIntended usage for this package is to preload it by adding\nthe loader function to `package.preload`. Note that the\nLua `package` library must have already been loaded before\nthe loader can be added.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."hslua" or ((hsPkgs.pkgs-errors).buildDepError "hslua"))
          (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
          ];
        buildable = true;
        };
      tests = {
        "test-hslua-module-system" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hslua" or ((hsPkgs.pkgs-errors).buildDepError "hslua"))
            (hsPkgs."hslua-module-system" or ((hsPkgs.pkgs-errors).buildDepError "hslua-module-system"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }