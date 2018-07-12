{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "uber";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Tarun <tj.joshi7@gmail.com>";
        author = "Tarun";
        homepage = "https://github.com/byteally/webapi-uber.git";
        url = "";
        synopsis = "Uber client for Haskell";
        description = "Bindings for Uber API";
        buildType = "Simple";
      };
      components = {
        "uber" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.webapi
          ];
        };
        tests = {
          "uber-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.text
              hsPkgs.uber
            ];
          };
        };
      };
    }