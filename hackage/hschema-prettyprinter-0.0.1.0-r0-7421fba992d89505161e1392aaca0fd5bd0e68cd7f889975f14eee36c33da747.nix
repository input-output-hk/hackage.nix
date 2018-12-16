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
      specVersion = "1.12";
      identifier = {
        name = "hschema-prettyprinter";
        version = "0.0.1.0";
      };
      license = "LGPL-3.0-only";
      copyright = "2018 Antonio Alonso Dominguez";
      maintainer = "alonso.domin@gmail.com";
      author = "Antonio Alonso Dominguez";
      homepage = "https://github.com/alonsodomin/haskell-schema#readme";
      url = "";
      synopsis = "Describe schemas for your Haskell data types.";
      description = "Please see the README on GitHub at <https://github.com/alonsodomin/haskell-schema#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.contravariant)
          (hsPkgs.free)
          (hsPkgs.hschema)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.natural-transformation)
          (hsPkgs.prettyprinter)
          (hsPkgs.prettyprinter-ansi-terminal)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
    };
  }