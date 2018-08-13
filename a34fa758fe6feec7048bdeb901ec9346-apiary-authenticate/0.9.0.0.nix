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
      specVersion = "1.10";
      identifier = {
        name = "apiary-authenticate";
        version = "0.9.0.0";
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
      "apiary-authenticate" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.apiary)
          (hsPkgs.apiary-clientsession)
          (hsPkgs.authenticate)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.data-default-class)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.resourcet)
          (hsPkgs.http-types)
          (hsPkgs.blaze-builder)
          (hsPkgs.reflection)
          (hsPkgs.binary)
          (hsPkgs.tagged)
        ];
      };
    };
  }