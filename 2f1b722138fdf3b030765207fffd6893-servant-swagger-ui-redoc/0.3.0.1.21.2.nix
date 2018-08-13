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
      specVersion = "1.12";
      identifier = {
        name = "servant-swagger-ui-redoc";
        version = "0.3.0.1.21.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell-servant-maintainers@googlegroups.com";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/haskell-servant/servant-swagger-ui";
      url = "";
      synopsis = "Servant swagger ui: ReDoc theme";
      description = "Provide embedded swagger UI for servant and swagger (i.e. servant-swagger)\n\nReDoc theme: https://github.com/Rebilly/ReDoc";
      buildType = "Simple";
    };
    components = {
      "servant-swagger-ui-redoc" = {
        depends  = [
          (hsPkgs.servant-swagger-ui-core)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.file-embed-lzma)
          (hsPkgs.servant)
          (hsPkgs.servant-server)
          (hsPkgs.swagger2)
          (hsPkgs.text)
        ];
      };
    };
  }