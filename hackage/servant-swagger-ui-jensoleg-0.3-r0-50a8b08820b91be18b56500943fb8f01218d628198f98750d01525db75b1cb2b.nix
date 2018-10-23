{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = {
        name = "servant-swagger-ui-jensoleg";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/servant-swagger-ui";
      url = "";
      synopsis = "Servant swagger ui: Jens-Ole Graulund theme";
      description = "Provide embedded swagger UI for servant and swagger (i.e. servant-swagger)\n\nJsn-Ole Graulund theme https://github.com/jensoleg/swagger-org";
      buildType = "Simple";
    };
    components = {
      "servant-swagger-ui-jensoleg" = {
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