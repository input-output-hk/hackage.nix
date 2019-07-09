{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildexample = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "servant-checked-exceptions";
        version = "2.2.0.0";
        };
      license = "BSD-3-Clause";
      copyright = "2017-2018 Dennis Gosnell";
      maintainer = "cdep.illabout@gmail.com";
      author = "Dennis Gosnell";
      homepage = "https://github.com/cdepillabout/servant-checked-exceptions";
      url = "";
      synopsis = "Checked exceptions for Servant APIs.";
      description = "Please see <https://github.com/cdepillabout/servant-checked-exceptions#readme README.md>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-types)
          (hsPkgs.servant)
          (hsPkgs.servant-checked-exceptions-core)
          (hsPkgs.servant-client)
          (hsPkgs.servant-client-core)
          (hsPkgs.servant-server)
          (hsPkgs.wai)
          (hsPkgs.world-peace)
          ];
        };
      exes = {
        "servant-checked-exceptions-example-client" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.http-api-data)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
            (hsPkgs.optparse-applicative)
            (hsPkgs.servant)
            (hsPkgs.servant-checked-exceptions)
            (hsPkgs.servant-client)
            (hsPkgs.text)
            ];
          };
        "servant-checked-exceptions-example-server" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.http-api-data)
            (hsPkgs.http-types)
            (hsPkgs.servant)
            (hsPkgs.servant-checked-exceptions)
            (hsPkgs.servant-server)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.warp)
            ];
          };
        "servant-checked-exceptions-example-envelopet" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.http-api-data)
            (hsPkgs.http-types)
            (hsPkgs.servant)
            (hsPkgs.servant-checked-exceptions)
            (hsPkgs.servant-server)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.warp)
            ];
          };
        };
      tests = {
        "servant-checked-exceptions-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec-wai)
            (hsPkgs.http-types)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.tasty-hunit)
            (hsPkgs.servant)
            (hsPkgs.servant-checked-exceptions)
            (hsPkgs.servant-server)
            (hsPkgs.wai)
            ];
          };
        };
      };
    }