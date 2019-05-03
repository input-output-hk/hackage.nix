{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "antiope-core"; version = "7.0.1"; };
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
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.generic-lens)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unliftio-core)
          ];
        };
      tests = {
        "antiope-core-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-lens)
            (hsPkgs.amazonka)
            (hsPkgs.amazonka-core)
            (hsPkgs.antiope-core)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.exceptions)
            (hsPkgs.generic-lens)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.resourcet)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unliftio-core)
            ];
          };
        };
      };
    }