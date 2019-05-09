{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hsaml2"; version = "0.1"; };
      license = "Apache-2.0";
      copyright = "2016";
      maintainer = "dylan@dylex.net";
      author = "Dylan Simon";
      homepage = "";
      url = "";
      synopsis = "OASIS Security Assertion Markup Language (SAML) V2.0";
      description = "Direct implementation of the SAML XML standard (https://www.oasis-open.org/standards#samlv2.0), along with some related dependencies.  This is currently partial, as the standard is quite extensive, but is sufficient to build a functioning SP and fully validate responses.  The module layout basically follows the standard definition documentation.  Its use still requires a fairly extensive understanding of SAML.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.asn1-encoding)
          (hsPkgs.asn1-types)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.cryptonite)
          (hsPkgs.data-default)
          (hsPkgs.http-types)
          (hsPkgs.hxt)
          (hsPkgs.hxt-charproperties)
          (hsPkgs.hxt-unicode)
          (hsPkgs.invertible)
          (hsPkgs.invertible-hxt)
          (hsPkgs.lens)
          (hsPkgs.memory)
          (hsPkgs.mtl)
          (hsPkgs.network-uri)
          (hsPkgs.process)
          (hsPkgs.semigroups)
          (hsPkgs.template-haskell)
          (hsPkgs.time)
          (hsPkgs.x509)
          (hsPkgs.zlib)
          ];
        pkgconfig = [ (pkgconfPkgs."libxml-2.0") ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hsaml2)
            (hsPkgs.hxt)
            (hsPkgs.hxt-http)
            (hsPkgs.network-uri)
            (hsPkgs.semigroups)
            (hsPkgs.time)
            (hsPkgs.x509)
            (hsPkgs.HUnit)
            ];
          };
        };
      };
    }