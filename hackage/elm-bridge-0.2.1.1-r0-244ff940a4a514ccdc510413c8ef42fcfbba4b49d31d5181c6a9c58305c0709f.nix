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
        version = "0.2.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Alexander Thiemann";
      maintainer = "Alexander Thiemann <mail@athiemann.net>";
      author = "Alexander Thiemann <mail@athiemann.net>, Simon Marechal <bartavelle@gmail.com>";
      homepage = "http://github.com/agrafix/elm-bridge";
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
          (hsPkgs.aeson)
        ];
      };
      tests = {
        "end-to-end-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.elm-bridge)
            (hsPkgs.aeson)
            (hsPkgs.containers)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
          ];
        };
        "derive-elm-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.elm-bridge)
            (hsPkgs.aeson)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }