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
        name = "cfenv";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018, Tom Oram";
      maintainer = "tom@x2k.com";
      author = "Tom Oram";
      homepage = "https://github.com/tomphp/haskell-cfenv#readme";
      url = "";
      synopsis = "A library getting the environment when running on Cloud Foundry";
      description = "This is a port of go-cfenv for Golang. The purpose of this library is to assist you in writing Haskell apps that run on Cloud Foundry. It provides convenience functions and structures that map to Cloud Foundry environment variable primitives.";
      buildType = "Simple";
    };
    components = {
      "cfenv" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "cfenv-test" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.cfenv)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.raw-strings-qq)
          ];
        };
      };
    };
  }