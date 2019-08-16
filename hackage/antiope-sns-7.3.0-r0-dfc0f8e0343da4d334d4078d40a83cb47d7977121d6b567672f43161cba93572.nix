{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "antiope-sns"; version = "7.3.0"; };
      license = "MIT";
      copyright = "Arbor Networks";
      maintainer = "mayhem@arbor.net";
      author = "Arbor Networks";
      homepage = "https://github.com/arbor/antiope#readme";
      url = "";
      synopsis = "Please see the README on Github at <https://github.com/arbor/antiope#readme>";
      description = "Please see the README on Github at <https://github.com/arbor/antiope#readme>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.amazonka)
          (hsPkgs.amazonka-core)
          (hsPkgs.amazonka-sns)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.generic-lens)
          (hsPkgs.lens)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unliftio-core)
          ];
        };
      tests = {
        "antiope-sns-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.amazonka)
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-sns)
            (hsPkgs.antiope-sns)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.generic-lens)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.lens)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unliftio-core)
            ];
          };
        };
      };
    }