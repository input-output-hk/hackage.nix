{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hslua-module-text";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "© 2017–2018 Albert Krewinkel";
      maintainer = "albert+hslua@zeitkraut.de";
      author = "Albert Krewinkel";
      homepage = "https://github.com/hslua/hslua-module-text";
      url = "";
      synopsis = "Lua module for text";
      description = "UTF-8 aware subset of Lua's `string` module.";
      buildType = "Simple";
    };
    components = {
      "hslua-module-text" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
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