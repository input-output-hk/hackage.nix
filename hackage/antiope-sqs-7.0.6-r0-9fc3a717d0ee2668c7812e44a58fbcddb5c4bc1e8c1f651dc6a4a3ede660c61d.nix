{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "antiope-sqs"; version = "7.0.6"; };
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
          (hsPkgs.amazonka-sqs)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.generic-lens)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.monad-loops)
          (hsPkgs.mtl)
          (hsPkgs.network-uri)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.unliftio-core)
          (hsPkgs.unordered-containers)
          ];
        };
      tests = {
        "antiope-sqs-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.amazonka)
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-sqs)
            (hsPkgs.antiope-sqs)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.generic-lens)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.lens)
            (hsPkgs.lens-aeson)
            (hsPkgs.monad-loops)
            (hsPkgs.mtl)
            (hsPkgs.network-uri)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unliftio-core)
            ];
          };
        };
      };
    }