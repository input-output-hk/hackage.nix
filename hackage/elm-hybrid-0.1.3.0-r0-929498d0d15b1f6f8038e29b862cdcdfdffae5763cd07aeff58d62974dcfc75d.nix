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
        name = "elm-hybrid";
        version = "0.1.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Paramander";
      maintainer = "mats@paramander.com";
      author = "Paramander";
      homepage = "https://gitlab.com/paramander/elm-hybrid";
      url = "";
      synopsis = "Combine Elm with Haskell for data based applications";
      description = "Generate your basic elm types based on Haskell data";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.split)
          (hsPkgs.filepath)
          (hsPkgs.directory)
        ];
      };
      tests = {
        "elm-hybrid-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.elm-hybrid)
          ];
        };
      };
    };
  }