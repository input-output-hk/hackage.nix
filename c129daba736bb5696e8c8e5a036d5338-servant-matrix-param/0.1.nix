{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      with-servant-aeson-specs = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-matrix-param";
          version = "0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "soenkehahn@gmail.com";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Matrix parameter combinator for servant";
        description = "Matrix parameter combinator for servant";
        buildType = "Simple";
      };
      components = {
        "servant-matrix-param" = {
          depends  = [
            hsPkgs.base
            hsPkgs.servant
          ] ++ pkgs.lib.optional _flags.with-servant-aeson-specs hsPkgs.servant-aeson-specs;
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.servant
              hsPkgs.servant-aeson-specs
              hsPkgs.servant-matrix-param
            ];
          };
          "doctest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.servant
              hsPkgs.doctest
            ];
          };
        };
      };
    }