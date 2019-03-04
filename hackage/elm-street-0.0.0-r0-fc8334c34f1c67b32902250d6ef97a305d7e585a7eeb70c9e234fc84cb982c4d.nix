{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "elm-street"; version = "0.0.0"; };
      license = "MPL-2.0";
      copyright = "2019 Holmusk";
      maintainer = "tech@holmusk.com";
      author = "Holmusk";
      homepage = "https://github.com/Holmusk/elm-street";
      url = "";
      synopsis = "Crossing the road between Haskell and Elm";
      description = "`Elm-street` allows you to generate automatically derived from Haskell types\ndefinitions of Elm data types, JSON encoders and decoders. This helps to avoid\nwriting and maintaining huge chunk of boilerplate code when developing full-stack\napplications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.prettyprinter)
          (hsPkgs.text)
          (hsPkgs.time)
          ];
        };
      sublibs = {
        "types" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.elm-street)
            (hsPkgs.text)
            (hsPkgs.time)
            ];
          };
        };
      exes = {
        "generate-elm" = {
          depends = [ (hsPkgs.base) (hsPkgs.elm-street) (hsPkgs.types) ];
          };
        "run-backend" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.servant)
            (hsPkgs.servant-server)
            (hsPkgs.types)
            (hsPkgs.wai)
            (hsPkgs.warp)
            ];
          };
        };
      tests = {
        "elm-street-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.elm-street) ];
          };
        };
      };
    }