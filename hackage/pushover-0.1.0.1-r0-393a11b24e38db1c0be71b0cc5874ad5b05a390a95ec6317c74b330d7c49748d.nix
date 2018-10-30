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
        name = "pushover";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Dan Meakin";
      maintainer = "dan@danmeakin.com";
      author = "Dan Meakin";
      homepage = "https://github.com/DanMeakin/pushover";
      url = "";
      synopsis = "A Haskell Pushover API library";
      description = "This package provides functionality to allow Haskell\ndevelopers to interact with the Pushover API\n(https:\\/\\/pushover.net).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.uri-encode)
        ];
      };
      tests = {
        "pushover-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.http-client)
            (hsPkgs.pushover)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.time)
          ];
        };
      };
    };
  }