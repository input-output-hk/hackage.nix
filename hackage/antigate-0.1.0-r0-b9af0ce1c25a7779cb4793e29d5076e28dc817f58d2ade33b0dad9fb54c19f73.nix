{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "antigate";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "kudah <kudahkukarek@gmail.com>";
      author = "kudah <kudahkukarek@gmail.com>";
      homepage = "https://github.com/exbb2/antigate";
      url = "";
      synopsis = "Interface for antigate.com captcha recognition service.";
      description = "Interface for antigate.com captcha recognition service.";
      buildType = "Simple";
    };
    components = {
      "antigate" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.safe)
          (hsPkgs.data-default)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
          (hsPkgs.mime-types)
          (hsPkgs.http-types)
          (hsPkgs.http-conduit)
          (hsPkgs.transformers)
          (hsPkgs.resourcet)
          (hsPkgs.blaze-builder)
        ];
      };
    };
  }