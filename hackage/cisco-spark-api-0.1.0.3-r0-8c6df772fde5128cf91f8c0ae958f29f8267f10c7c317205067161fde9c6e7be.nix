{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cisco-spark-api"; version = "0.1.0.3"; };
      license = "MIT";
      copyright = "Copyright: (c) 2017 Naoto Shimazaki";
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
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.data-default)
          (hsPkgs.http-conduit)
          (hsPkgs.network-uri)
          (hsPkgs.text)
          (hsPkgs.bitset-word8)
          ];
        };
      exes = {
        "cisco-spark-api-exe" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.data-default)
            (hsPkgs.http-conduit)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.utf8-string)
            (hsPkgs.cisco-spark-api)
            ];
          };
        };
      tests = {
        "cisco-spark-api-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.async)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.data-default)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.network-uri)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.hspec)
            (hsPkgs.cisco-spark-api)
            ];
          };
        };
      };
    }