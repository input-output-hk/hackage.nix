{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = {
        name = "base-encoding";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "";
      url = "";
      synopsis = "Binary-to-text encodings (e.g. base64)";
      description = "This package provides a simple and convenient API to encode and\ndecode binary data in the popular binary-to-text \\\"base\\\" encoding\nfamily as described in [RFC 4648](https://tools.ietf.org/html/rfc4648) et al.\n\nCurrently, the following encodings are supported:\n\n- base16 (RFC4648)\n- base64 (RFC4648)\n- base64url (RFC4648)";
      buildType = "Simple";
    };
    components = {
      "base-encoding" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
    };
  }