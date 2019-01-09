{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "elm-export"; version = "0.4.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "2015-2016 Kris Jenkins";
      maintainer = "kris.jenkins@clearercode.com";
      author = "Kris Jenkins";
      homepage = "http://github.com/krisajenkins/elm-export";
      url = "";
      synopsis = "A library to generate Elm types from Haskell source.";
      description = "Generate Elm source code automatically from Haskell types. Using GHC.Generics, we can automatically derive Elm type declarations, and Aeson-compatible JSON decoders & encoders.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.time)
          ];
        };
      tests = {
        "elm-export-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.elm-export)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.text)
            (hsPkgs.time)
            ];
          };
        };
      };
    }