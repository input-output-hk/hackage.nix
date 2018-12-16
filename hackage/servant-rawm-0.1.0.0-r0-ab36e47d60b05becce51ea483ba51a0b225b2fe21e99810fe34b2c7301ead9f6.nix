{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      buildexample = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "servant-rawm";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Dennis Gosnell";
      maintainer = "cdep.illabout@gmail.com";
      author = "Dennis Gosnell";
      homepage = "https://github.com/cdepillabout/servant-rawm";
      url = "";
      synopsis = "Embed a raw 'Application' in a Servant API";
      description = "Please see <https://github.com/cdepillabout/servant-rawm#readme README.md>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.http-client)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.resourcet)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.servant-docs)
          (hsPkgs.servant-server)
          (hsPkgs.wai)
          (hsPkgs.wai-app-static)
        ];
      };
      exes = {
        "servant-rawm-example-client" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.http-client)
            (hsPkgs.http-media)
            (hsPkgs.http-types)
            (hsPkgs.servant)
            (hsPkgs.servant-rawm)
            (hsPkgs.servant-client)
            (hsPkgs.text)
          ];
        };
        "servant-rawm-example-server" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.servant)
            (hsPkgs.servant-rawm)
            (hsPkgs.servant-server)
            (hsPkgs.transformers)
            (hsPkgs.wai)
            (hsPkgs.warp)
          ];
        };
      };
    };
  }