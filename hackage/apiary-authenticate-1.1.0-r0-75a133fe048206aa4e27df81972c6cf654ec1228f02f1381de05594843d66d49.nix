{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "apiary-authenticate";
        version = "1.1.0";
      };
      license = "MIT";
      copyright = "(c) 2014 Hirotomo Moriwaki";
      maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      homepage = "https://github.com/philopon/apiary";
      url = "";
      synopsis = "authenticate support for apiary web framework.";
      description = "example: <https://github.com/philopon/apiary/blob/master/examples/auth.hs>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.apiary)
          (hsPkgs.apiary-clientsession)
          (hsPkgs.authenticate)
          (hsPkgs.monad-control)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.data-default-class)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.http-types)
          (hsPkgs.binary)
          (hsPkgs.resourcet)
          (hsPkgs.blaze-builder)
        ];
      };
    };
  }