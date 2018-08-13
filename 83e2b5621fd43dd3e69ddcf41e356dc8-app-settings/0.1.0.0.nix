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
        name = "app-settings";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "etouzery@gmail.com";
      author = "Emmanuel Touzery";
      homepage = "https://github.com/emmanueltouzery/app-settings";
      url = "";
      synopsis = "A library to manage application settings (INI file-like)";
      description = "";
      buildType = "Simple";
    };
    components = {
      "app-settings" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.text)
          (hsPkgs.parsec)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.text)
            (hsPkgs.parsec)
          ];
        };
      };
    };
  }