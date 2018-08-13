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
        name = "aeson-decode";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "2018 Typeclass Consulting, LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/aeson-decode";
      url = "";
      synopsis = "Easy functions for converting from Aeson.Value";
      description = "A small and simple library for interpreting JSON after it has\nbeen parsed by @aeson@ into the @Value@ type.\n\nDecoding failures do not come with any error messages; results\nare all @Maybe@.";
      buildType = "Simple";
    };
    components = {
      "aeson-decode" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "hedgehog" = {
          depends  = [
            (hsPkgs.aeson-decode)
            (hsPkgs.aeson-qq)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hedgehog)
            (hsPkgs.text)
            (hsPkgs.time)
          ];
        };
      };
    };
  }