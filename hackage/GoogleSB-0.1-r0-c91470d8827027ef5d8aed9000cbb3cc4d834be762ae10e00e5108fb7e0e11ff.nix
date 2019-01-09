{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "GoogleSB"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Alex Ott, 2009";
      maintainer = "alexott@gmail.com";
      author = "Alex Ott";
      homepage = "";
      url = "";
      synopsis = "Interface to Google Safe Browsing API";
      description = "This package implements support for Google Safe Browsing API, that provides\nalmost real-time information about malware & other malicious sites on the Web";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.HTTP)
          (hsPkgs.mtl)
          (hsPkgs.binary)
          (hsPkgs.Crypto)
          (hsPkgs.split)
          (hsPkgs.network)
          (hsPkgs.haskell98)
          ];
        };
      };
    }