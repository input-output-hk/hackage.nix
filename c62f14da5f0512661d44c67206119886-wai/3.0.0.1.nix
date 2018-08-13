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
      specVersion = "1.8";
      identifier = {
        name = "wai";
        version = "3.0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/yesodweb/wai";
      url = "";
      synopsis = "Web Application Interface.";
      description = "Provides a common protocol for communication between web applications and web servers.";
      buildType = "Simple";
    };
    components = {
      "wai" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.network)
          (hsPkgs.http-types)
          (hsPkgs.text)
          (hsPkgs.vault)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.wai)
            (hsPkgs.hspec)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }