{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { demo = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "sakuraio-platform";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Takamasa Mitsuji";
      maintainer = "tkms@mitsuji.org";
      author = "Takamasa Mitsuji";
      homepage = "https://github.com/mitsuji/sakuraio-platform#readme";
      url = "";
      synopsis = "Haskell representation of messages exchanged on the sakura.io platform.";
      description = "Please see the README on GitHub at <https://github.com/mitsuji/sakuraio-platform#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "sakuraio-platform-demo-http-client-exe" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.time)
            (hsPkgs.bytestring)
            (hsPkgs.aeson)
            (hsPkgs.unordered-containers)
            (hsPkgs.sakuraio-platform)
            (hsPkgs.http-types)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
          ];
        };
        "sakuraio-platform-demo-wai-exe" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.time)
            (hsPkgs.bytestring)
            (hsPkgs.aeson)
            (hsPkgs.unordered-containers)
            (hsPkgs.sakuraio-platform)
            (hsPkgs.http-types)
            (hsPkgs.wai)
            (hsPkgs.warp)
          ];
        };
        "sakuraio-platform-demo-websockets-exe" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.time)
            (hsPkgs.bytestring)
            (hsPkgs.aeson)
            (hsPkgs.unordered-containers)
            (hsPkgs.sakuraio-platform)
            (hsPkgs.websockets)
            (hsPkgs.wuss)
            (hsPkgs.network)
            (hsPkgs.mtl)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "sakuraio-platform-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.time)
            (hsPkgs.bytestring)
            (hsPkgs.aeson)
            (hsPkgs.unordered-containers)
            (hsPkgs.sakuraio-platform)
            (hsPkgs.hspec)
            (hsPkgs.time)
          ];
        };
      };
    };
  }