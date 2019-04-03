{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "webby"; version = "0.1.0.2"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "aditya.mmy@gmail.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A super-simple web server framework";
      description = "A super-simple, easy to use web server framework inspired by\nScotty. The goals of the project are: (1) Be easy to use (2) Allow\ngraceful exception handling (3) Parse request parameters easily and\nin a typed manner.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.fast-logger)
          (hsPkgs.formatting)
          (hsPkgs.http-api-data)
          (hsPkgs.http-types)
          (hsPkgs.monad-logger)
          (hsPkgs.protolude)
          (hsPkgs.resourcet)
          (hsPkgs.text)
          (hsPkgs.unliftio)
          (hsPkgs.unordered-containers)
          (hsPkgs.wai)
          ];
        };
      tests = {
        "webby-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.fast-logger)
            (hsPkgs.formatting)
            (hsPkgs.http-api-data)
            (hsPkgs.http-types)
            (hsPkgs.monad-logger)
            (hsPkgs.protolude)
            (hsPkgs.resourcet)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.unliftio)
            (hsPkgs.unordered-containers)
            (hsPkgs.wai)
            (hsPkgs.webby)
            ];
          };
        };
      };
    }