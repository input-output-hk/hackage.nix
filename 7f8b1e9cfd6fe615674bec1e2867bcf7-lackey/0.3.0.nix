{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lackey";
          version = "0.3.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Taylor Fausak";
        author = "";
        homepage = "https://github.com/tfausak/lackey#readme";
        url = "";
        synopsis = "Generate Ruby clients from Servant APIs.";
        description = "Lackey generates Ruby clients from Servant APIs.";
        buildType = "Simple";
      };
      components = {
        lackey = {
          depends  = [
            hsPkgs.base
            hsPkgs.servant
            hsPkgs.servant-foreign
            hsPkgs.text
          ];
        };
        tests = {
          lackey-test-suite = {
            depends  = [
              hsPkgs.base
              hsPkgs.lackey
              hsPkgs.servant
              hsPkgs.tasty
              hsPkgs.tasty-hspec
              hsPkgs.text
            ];
          };
        };
      };
    }