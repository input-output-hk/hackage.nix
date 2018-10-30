{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hslua-module-text";
        version = "0.1";
      };
      license = "MIT";
      copyright = "© 2017 Albert Krewinkel";
      maintainer = "albert+hslua@zeitkraut.de";
      author = "Albert Krewinkel";
      homepage = "https://github.com/hslua/hslua-text-module";
      url = "";
      synopsis = "Lua module for text";
      description = "UTF-8 aware subset of Lua's `string` module.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hslua)
          (hsPkgs.text)
        ];
      };
      tests = {
        "test-hslua" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hslua)
            (hsPkgs.hslua-module-text)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
          ];
        };
      };
    };
  }