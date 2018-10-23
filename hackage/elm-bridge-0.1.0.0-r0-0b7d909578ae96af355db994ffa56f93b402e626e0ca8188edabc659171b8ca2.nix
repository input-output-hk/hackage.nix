{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "elm-bridge";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Alexander Thiemann";
      maintainer = "Alexander Thiemann <mail@athiemann.net>";
      author = "Alexander Thiemann <mail@athiemann.net>";
      homepage = "http://github.com/agrafix/derive-elm";
      url = "";
      synopsis = "Derive Elm types from Haskell types";
      description = "Building the bridge from Haskell to Elm and back. Define types once,\nuse on both sides and enjoy easy (de)serialisation. Cheers!";
      buildType = "Simple";
    };
    components = {
      "elm-bridge" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "derive-elm-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.elm-bridge)
          ];
        };
      };
    };
  }