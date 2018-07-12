{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hurriyet";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Yiğit Özkavcı <yigitozkavci8@gmail.com>";
        author = "Yiğit Özkavcı <yigitozkavci8@gmail.com>";
        homepage = "https://github.com/yigitozkavci/hurriyet-haskell";
        url = "";
        synopsis = "Haskell bindings for Hurriyet API";
        description = "hurriyet-haskell is the client library for communicating with Hurriyet API (developers.hurriyet.com.tr)\n\nTo get started, see @Hurriyet@ module below.";
        buildType = "Simple";
      };
      components = {
        "hurriyet" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.text
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hurriyet
              hsPkgs.hspec
            ];
          };
        };
      };
    }