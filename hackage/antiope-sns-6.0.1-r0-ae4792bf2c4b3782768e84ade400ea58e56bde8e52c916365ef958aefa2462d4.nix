{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "antiope-sns";
        version = "6.0.1";
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
      "library" = {
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