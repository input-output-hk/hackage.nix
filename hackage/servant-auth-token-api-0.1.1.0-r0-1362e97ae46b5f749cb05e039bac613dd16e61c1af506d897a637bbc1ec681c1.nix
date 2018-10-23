{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "servant-auth-token-api";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Anton Gushcha";
      maintainer = "ncrashed@gmail.com";
      author = "NCrashed";
      homepage = "https://github.com/ncrashed/servant-auth-token-api#readme";
      url = "";
      synopsis = "Servant based API for token based authorisation";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "servant-auth-token-api" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.lens)
          (hsPkgs.aeson-injector)
          (hsPkgs.swagger2)
          (hsPkgs.servant)
          (hsPkgs.servant-swagger)
          (hsPkgs.servant-docs)
          (hsPkgs.text)
        ];
      };
    };
  }