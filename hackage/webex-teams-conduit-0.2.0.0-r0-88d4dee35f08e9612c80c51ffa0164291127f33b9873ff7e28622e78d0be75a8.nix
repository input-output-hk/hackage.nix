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
        name = "webex-teams-conduit";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "2017,2018 Naoto Shimazaki";
      maintainer = "Naoto.Shimazaki@gmail.com";
      author = "Naoto Shimazaki";
      homepage = "https://github.com/nshimaza/webex-teams-api#readme";
      url = "";
      synopsis = "Conduit wrapper of Webex Teams List API";
      description = "Please see the README on Github at <https://github.com/nshimaza/webex-teams-api#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.webex-teams-api)
        ];
      };
      exes = {
        "webex-teams-conduit-exe" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.data-default)
            (hsPkgs.http-client)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.utf8-string)
            (hsPkgs.webex-teams-api)
            (hsPkgs.webex-teams-conduit)
          ];
        };
      };
      tests = {
        "webex-teams-conduit-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.data-default)
            (hsPkgs.hspec)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.network-uri)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.webex-teams-api)
            (hsPkgs.webex-teams-conduit)
          ];
        };
      };
    };
  }