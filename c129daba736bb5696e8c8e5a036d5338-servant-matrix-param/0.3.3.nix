{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      with-servant-aeson-specs = false;
      with-servant-server = false;
      with-servant-client = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "servant-matrix-param";
        version = "0.3.3";
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
        depends  = (([
          (hsPkgs.base)
          (hsPkgs.servant)
        ] ++ pkgs.lib.optional (_flags.with-servant-aeson-specs) (hsPkgs.servant-aeson-specs)) ++ pkgs.lib.optionals (_flags.with-servant-server) [
          (hsPkgs.servant-server)
          (hsPkgs.http-api-data)
          (hsPkgs.containers)
          (hsPkgs.string-conversions)
          (hsPkgs.text)
        ]) ++ pkgs.lib.optionals (_flags.with-servant-client) [
          (hsPkgs.servant-client)
          (hsPkgs.text)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.servant)
            (hsPkgs.servant-aeson-specs)
            (hsPkgs.servant-matrix-param)
            (hsPkgs.servant-server)
            (hsPkgs.servant-client)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.wai-extra)
            (hsPkgs.http-types)
            (hsPkgs.http-client)
            (hsPkgs.bytestring)
            (hsPkgs.transformers)
            (hsPkgs.aeson)
          ];
        };
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.servant)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }