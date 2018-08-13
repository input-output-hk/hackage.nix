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
        name = "webex-teams-pipes";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "2017,2018 Naoto Shimazaki";
      maintainer = "Naoto.Shimazaki@gmail.com";
      author = "Naoto Shimazaki";
      homepage = "https://github.com/nshimaza/webex-teams-api#readme";
      url = "";
      synopsis = "Pipes wrapper of Webex Teams List API";
      description = "Please see the README on Github at <https://github.com/nshimaza/webex-teams-api#readme>";
      buildType = "Simple";
    };
    components = {
      "webex-teams-pipes" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.pipes)
          (hsPkgs.webex-teams-api)
        ];
      };
      exes = {
        "webex-teams-pipes-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.http-client)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pipes)
            (hsPkgs.text)
            (hsPkgs.utf8-string)
            (hsPkgs.webex-teams-api)
            (hsPkgs.webex-teams-pipes)
          ];
        };
      };
      tests = {
        "webex-teams-conduit-test" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.hspec)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.network-uri)
            (hsPkgs.pipes)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.webex-teams-api)
            (hsPkgs.webex-teams-pipes)
          ];
        };
      };
    };
  }