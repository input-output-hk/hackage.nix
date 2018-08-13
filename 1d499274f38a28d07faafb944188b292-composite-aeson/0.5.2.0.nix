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
        name = "composite-aeson";
        version = "0.5.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Confer Health, Inc.";
      maintainer = "oss@confer.health";
      author = "Confer Health, Inc";
      homepage = "https://github.com/ConferHealth/composite#readme";
      url = "";
      synopsis = "JSON for Vinyl/Frames records";
      description = "Integration between Aeson and Vinyl/Frames records allowing records to be easily converted to JSON using automatic derivation, explicit formats, or a mix of both.";
      buildType = "Simple";
    };
    components = {
      "composite-aeson" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.aeson)
          (hsPkgs.aeson-better-errors)
          (hsPkgs.composite-base)
          (hsPkgs.containers)
          (hsPkgs.contravariant)
          (hsPkgs.generic-deriving)
          (hsPkgs.hashable)
          (hsPkgs.lens)
          (hsPkgs.mmorph)
          (hsPkgs.mtl)
          (hsPkgs.profunctors)
          (hsPkgs.scientific)
          (hsPkgs.tagged)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.vinyl)
        ];
      };
      tests = {
        "composite-aeson-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.aeson)
            (hsPkgs.aeson-better-errors)
            (hsPkgs.composite-base)
            (hsPkgs.containers)
            (hsPkgs.contravariant)
            (hsPkgs.generic-deriving)
            (hsPkgs.hashable)
            (hsPkgs.lens)
            (hsPkgs.mmorph)
            (hsPkgs.mtl)
            (hsPkgs.profunctors)
            (hsPkgs.scientific)
            (hsPkgs.tagged)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.vinyl)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson-qq)
            (hsPkgs.composite-aeson)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }