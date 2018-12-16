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
        name = "servant-tracing";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2018 Chris Coffey";
      maintainer = "chris@foldl.io";
      author = "Chris Coffey";
      homepage = "https://github.com/ChrisCoffey/servant-tracing#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on Github at <https://github.com/ChrisCoffey/servant-tracing#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.servant)
          (hsPkgs.servant-server)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.time)
          (hsPkgs.wai)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-lexing)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.text)
          (hsPkgs.async)
          (hsPkgs.monad-control)
          (hsPkgs.lifted-base)
          (hsPkgs.http-api-data)
          (hsPkgs.aeson)
          (hsPkgs.http-client)
        ];
      };
      exes = {
        "servant-tracing-example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.servant-tracing)
            (hsPkgs.servant)
            (hsPkgs.servant-server)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.wai)
            (hsPkgs.monad-control)
            (hsPkgs.lifted-base)
            (hsPkgs.warp)
            (hsPkgs.async)
            (hsPkgs.http-client)
          ];
        };
      };
      tests = {
        "servant-tracing-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.servant-tracing)
            (hsPkgs.http-api-data)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.monad-control)
            (hsPkgs.text)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.aeson)
            (hsPkgs.containers)
            (hsPkgs.time)
          ];
        };
      };
    };
  }