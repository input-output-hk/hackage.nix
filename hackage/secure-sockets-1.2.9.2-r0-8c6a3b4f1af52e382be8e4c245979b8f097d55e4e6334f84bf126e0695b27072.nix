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
      specVersion = "1.6";
      identifier = {
        name = "secure-sockets";
        version = "1.2.9.2";
      };
      license = "BSD-3-Clause";
      copyright = "Google Inc. 2010, Galois Inc. 2012";
      maintainer = "Iavor S. Diatchki <iavor.diatchki@gmail.com>";
      author = "David Anderson <dave@natulte.net>";
      homepage = "http://code.google.com/p/secure-hs/";
      url = "";
      synopsis = "Secure point-to-point connectivity library";
      description = "This library simplifies the task of securely connecting two\nservers to each other, with strong authentication and\nencryption on the wire.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.HsOpenSSL)
          (hsPkgs.network)
          (hsPkgs.transformers)
          (hsPkgs.process)
        ];
      };
    };
  }