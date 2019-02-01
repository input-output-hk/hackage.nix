{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "antiope-messages"; version = "6.3.0"; };
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
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.amazonka)
          (hsPkgs.amazonka-core)
          (hsPkgs.amazonka-s3)
          (hsPkgs.amazonka-sqs)
          (hsPkgs.antiope-s3)
          (hsPkgs.base)
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
            (hsPkgs.aeson)
            (hsPkgs.amazonka)
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-s3)
            (hsPkgs.amazonka-sqs)
            (hsPkgs.antiope-messages)
            (hsPkgs.antiope-s3)
            (hsPkgs.base)
            (hsPkgs.generic-lens)
            (hsPkgs.lens)
            (hsPkgs.lens-aeson)
            (hsPkgs.monad-loops)
            (hsPkgs.network-uri)
            (hsPkgs.text)
            (hsPkgs.unliftio-core)
            ];
          };
        };
      };
    }