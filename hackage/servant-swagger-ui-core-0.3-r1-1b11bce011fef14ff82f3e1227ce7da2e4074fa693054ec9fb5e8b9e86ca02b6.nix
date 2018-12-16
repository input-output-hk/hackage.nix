{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { servant-0-5 = true; };
    package = {
      specVersion = "1.12";
      identifier = {
        name = "servant-swagger-ui-core";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/servant-swagger-ui";
      url = "";
      synopsis = "Servant swagger ui core components";
      description = "Provide embedded swagger UI for servant and swagger (i.e. servant-swagger)\n\nSee servant-swagger-ui, servant-swagger-ui-jensoleg or\nservant-swagger-ui-redoc for \"concrete\" implementations.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.blaze-markup)
          (hsPkgs.bytestring)
          (hsPkgs.http-media)
          (hsPkgs.servant)
          (hsPkgs.servant-blaze)
          (hsPkgs.servant-server)
          (hsPkgs.swagger2)
          (hsPkgs.text)
          (hsPkgs.wai-app-static)
        ] ++ (if flags.servant-0-5
          then [
            (hsPkgs.servant)
            (hsPkgs.transformers)
            (hsPkgs.transformers-compat)
          ]
          else [
            (hsPkgs.servant)
            (hsPkgs.either)
          ]);
      };
    };
  }