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
        version = "0.6";
      };
      license = "MIT";
      copyright = "";
      maintainer = "kudah <kudahkukarek@gmail.com>";
      author = "kudah <kudahkukarek@gmail.com>";
      homepage = "https://github.com/exbb2/antigate";
      url = "";
      synopsis = "Interface for antigate.com captcha recognition API";
      description = "Haskell interface for antigate.com captcha recognition service\nand other services supporting its API (e.g. captchabot, decaptcher)";
      buildType = "Simple";
    };
    components = {
      "antigate" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.http-conduit)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.data-default)
          (hsPkgs.safe)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
          (hsPkgs.deepseq)
        ];
      };
    };
  }