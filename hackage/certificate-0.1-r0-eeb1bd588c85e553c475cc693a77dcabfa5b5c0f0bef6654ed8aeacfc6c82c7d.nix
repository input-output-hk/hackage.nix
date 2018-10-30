{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { executable = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "certificate";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "";
      url = "";
      synopsis = "Certificate and Key Reader/Writer";
      description = "Certificate and Key reader/writer";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.asn1-data)
          (hsPkgs.base64-bytestring)
        ];
      };
      exes = {
        "certificate" = {
          depends  = pkgs.lib.optionals (flags.executable) [
            (hsPkgs.RSA)
            (hsPkgs.hexdump)
            (hsPkgs.haskell98)
          ];
        };
      };
    };
  }