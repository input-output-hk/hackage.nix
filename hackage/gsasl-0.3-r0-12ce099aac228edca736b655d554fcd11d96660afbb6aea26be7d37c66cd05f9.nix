{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "gsasl";
        version = "0.3";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin";
      homepage = "http://ianen.org/haskell/bindings/gsasl/";
      url = "";
      synopsis = "Bindings for GNU SASL";
      description = "";
      buildType = "Simple";
    };
    components = {
      "gsasl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
        ];
        libs = [ (pkgs."gsasl") ];
        pkgconfig = [
          (pkgconfPkgs.libgsasl)
        ];
      };
    };
  }