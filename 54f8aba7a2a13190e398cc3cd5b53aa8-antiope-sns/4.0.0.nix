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
        name = "antiope-sns";
        version = "4.0.0";
      };
      license = "MIT";
      copyright = "Arbor Networks";
      maintainer = "mayhem@arbor.net";
      author = "Arbor Networks";
      homepage = "https://github.com/arbor/antiope#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on Github at <https://github.com/arbor/antiope#readme>";
      buildType = "Simple";
    };
    components = {
      "antiope-sns" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.amazonka)
          (hsPkgs.amazonka-core)
          (hsPkgs.amazonka-sns)
          (hsPkgs.base)
          (hsPkgs.generic-lens)
          (hsPkgs.lens)
          (hsPkgs.text)
          (hsPkgs.unliftio-core)
        ];
      };
      tests = {
        "antiope-sns-test" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.amazonka)
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-sns)
            (hsPkgs.antiope-sns)
            (hsPkgs.base)
            (hsPkgs.generic-lens)
            (hsPkgs.lens)
            (hsPkgs.text)
            (hsPkgs.unliftio-core)
          ];
        };
      };
    };
  }