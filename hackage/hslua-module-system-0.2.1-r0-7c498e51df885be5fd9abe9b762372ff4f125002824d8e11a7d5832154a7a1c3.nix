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
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.hslua)
          (hsPkgs.temporary)
          ];
        };
      tests = {
        "test-hslua-module-system" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hslua)
            (hsPkgs.hslua-module-system)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            ];
          };
        };
      };
    }