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
        name = "servant-router";
        version = "0.8.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Will Fancher";
      maintainer = "willfancher38@gmail.com";
      author = "Will Fancher";
      homepage = "https://github.com/ElvishJerricco/servant-router";
      url = "";
      synopsis = "Servant router for non-server applications.";
      description = "Write Servant APIs to be routed without a server.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.servant)
          (hsPkgs.text)
          (hsPkgs.http-api-data)
          (hsPkgs.http-types)
          (hsPkgs.network-uri)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "servant-router-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.servant-router)
            (hsPkgs.servant)
            (hsPkgs.mtl)
          ];
        };
        "server-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.servant-router)
            (hsPkgs.servant-server)
            (hsPkgs.servant-blaze)
            (hsPkgs.mtl)
            (hsPkgs.warp)
            (hsPkgs.blaze-html)
          ];
        };
      };
    };
  }