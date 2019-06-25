{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "antiope-messages"; version = "7.1.1"; };
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
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.amazonka)
          (hsPkgs.amazonka-core)
          (hsPkgs.bytestring)
          (hsPkgs.generic-lens)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.monad-loops)
          (hsPkgs.network-uri)
          (hsPkgs.text)
          (hsPkgs.unliftio-core)
          ];
        };
      tests = {
        "antiope-messages-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.amazonka)
            (hsPkgs.amazonka-core)
            (hsPkgs.antiope-messages)
            (hsPkgs.bytestring)
            (hsPkgs.generic-lens)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.lens)
            (hsPkgs.lens-aeson)
            (hsPkgs.monad-loops)
            (hsPkgs.network-uri)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.unliftio-core)
            ];
          };
        };
      };
    }