{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      flat-perm-symbols = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "servant-auth-token-api";
        version = "0.4.1.0";
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
          (hsPkgs.aeson-injector)
          (hsPkgs.lens)
          (hsPkgs.raw-strings-qq)
          (hsPkgs.servant)
          (hsPkgs.servant-docs)
          (hsPkgs.servant-swagger)
          (hsPkgs.swagger2)
          (hsPkgs.text)
        ];
      };
    };
  }