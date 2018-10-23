{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "elm-websocket";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Rhys Keepence";
      maintainer = "rhyskeepence@gmail.com";
      author = "Rhys Keepence";
      homepage = "http://github.com/rhyskeepence/elm-websocket";
      url = "";
      synopsis = "Generate ELM code from a Wai websocket application.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "elm-websocket" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.concurrent-extra)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.formatting)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.wai)
          (hsPkgs.wai-websockets)
          (hsPkgs.websockets)
          (hsPkgs.wl-pprint-text)
        ];
      };
      exes = {
        "elm-websocket-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.concurrent-extra)
            (hsPkgs.elm-websocket)
            (hsPkgs.http-types)
            (hsPkgs.scotty)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.wai-middleware-static)
            (hsPkgs.warp)
          ];
        };
        "elm-websocket-code-generator" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.concurrent-extra)
            (hsPkgs.elm-websocket)
            (hsPkgs.http-types)
            (hsPkgs.scotty)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.wai-middleware-static)
            (hsPkgs.warp)
          ];
        };
      };
      tests = {
        "elm-websocket-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.concurrent-extra)
            (hsPkgs.elm-websocket)
            (hsPkgs.hspec)
            (hsPkgs.http-types)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.websockets)
            (hsPkgs.warp)
          ];
        };
      };
    };
  }