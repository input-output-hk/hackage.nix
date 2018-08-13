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
        name = "antiope-dynamodb";
        version = "1.0.0";
      };
      license = "MIT";
      copyright = "Arbor Networks";
      maintainer = "mayhem@arbor.net";
      author = "Tyler Durden";
      homepage = "https://github.com/arbor/antiope#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on Github at <https://github.com/arbor/antiope#readme>";
      buildType = "Simple";
    };
    components = {
      "antiope-dynamodb" = {
        depends  = [
          (hsPkgs.amazonka)
          (hsPkgs.amazonka-core)
          (hsPkgs.amazonka-dynamodb)
          (hsPkgs.base)
          (hsPkgs.generic-lens)
          (hsPkgs.lens)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "antiope-dynamodb-test" = {
          depends  = [
            (hsPkgs.amazonka)
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-dynamodb)
            (hsPkgs.antiope-dynamodb)
            (hsPkgs.base)
            (hsPkgs.generic-lens)
            (hsPkgs.lens)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }