{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "composite-aeson"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Confer Health, Inc.";
      maintainer = "oss@confer.care";
      author = "Confer Health, Inc";
      homepage = "https://github.com/ConferHealth/composite#readme";
      url = "";
      synopsis = "JSON for Vinyl/Frames records";
      description = "Integration between Aeson and Vinyl/Frames records allowing records to be easily converted to JSON using automatic derivation, explicit formats, or a mix of both.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.Frames)
          (hsPkgs.aeson)
          (hsPkgs.aeson-better-errors)
          (hsPkgs.basic-prelude)
          (hsPkgs.composite-base)
          (hsPkgs.containers)
          (hsPkgs.contravariant)
          (hsPkgs.generic-deriving)
          (hsPkgs.lens)
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
          depends = [
            (hsPkgs.base)
            (hsPkgs.Frames)
            (hsPkgs.aeson)
            (hsPkgs.aeson-better-errors)
            (hsPkgs.basic-prelude)
            (hsPkgs.composite-base)
            (hsPkgs.containers)
            (hsPkgs.contravariant)
            (hsPkgs.generic-deriving)
            (hsPkgs.lens)
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