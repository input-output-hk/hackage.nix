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
        version = "0.5.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 - 2016 Alexander Thiemann and contributors";
      maintainer = "Alexander Thiemann <mail@athiemann.net>";
      author = "Alexander Thiemann <mail@athiemann.net>, Simon Marechal <bartavelle@gmail.com>";
      homepage = "https://github.com/agrafix/elm-bridge";
      url = "";
      synopsis = "Derive Elm types and Json code from Haskell types, using aeson's options";
      description = "Building the bridge from Haskell to Elm and back. Define types once,\nand derive the aeson and elm functions at the same time, using any aeson\noption you like. Cheers!";
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