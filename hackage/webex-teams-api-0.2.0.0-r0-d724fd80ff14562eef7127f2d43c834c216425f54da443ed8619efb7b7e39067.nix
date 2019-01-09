{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "webex-teams-api"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2017,2018 Naoto Shimazaki";
      maintainer = "Naoto.Shimazaki@gmail.com";
      author = "Naoto Shimazaki";
      homepage = "https://github.com/nshimaza/webex-teams-api#readme";
      url = "";
      synopsis = "A Haskell bindings for Webex Teams API";
      description = "Please see the README on Github at <https://github.com/nshimaza/webex-teams-api#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bitset-word8)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.data-default)
          (hsPkgs.http-conduit)
          (hsPkgs.network-uri)
          (hsPkgs.text)
          ];
        };
      exes = {
        "webex-teams-api-exe" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.http-conduit)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.utf8-string)
            (hsPkgs.webex-teams-api)
            ];
          };
        };
      tests = {
        "webex-teams-api-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.hspec)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.network-uri)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.webex-teams-api)
            ];
          };
        };
      };
    }