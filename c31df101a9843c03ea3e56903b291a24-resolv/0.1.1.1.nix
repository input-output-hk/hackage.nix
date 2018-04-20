{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.12";
        identifier = {
          name = "resolv";
          version = "0.1.1.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "hvr@gnu.org";
        author = "Herbert Valerio Riedel";
        homepage = "";
        url = "";
        synopsis = "Domain Name Service (DNS) lookup via the libresolv standard library routines";
        description = "This package implements an API for accessing\nthe [Domain Name Service (DNS)](https://tools.ietf.org/html/rfc1035)\nresolver service via the standard @libresolv@ system library (whose\nAPI is often available directly via the standard @libc@ C library) on\nUnix systems.\n\nThis package also includes support for decoding message record types\nas defined in the following RFCs:\n\n- [RFC 1035](https://tools.ietf.org/html/rfc1035): Domain Names - Implementation And Specification\n- [RFC 1183](https://tools.ietf.org/html/rfc1183): New DNS RR Definitions\n- [RFC 2782](https://tools.ietf.org/html/rfc2782): A DNS RR for specifying the location of services (DNS SRV)\n- [RFC 2915](https://tools.ietf.org/html/rfc2915): The Naming Authority Pointer (NAPTR) DNS Resource Record\n- [RFC 3596](https://tools.ietf.org/html/rfc3596): DNS Extensions to Support IP Version 6\n- [RFC 4034](https://tools.ietf.org/html/rfc4034): Resource Records for the DNS Security Extensions\n- [RFC 4255](https://tools.ietf.org/html/rfc4255): Using DNS to Securely Publish Secure Shell (SSH) Key Fingerprints\n- [RFC 4408](https://tools.ietf.org/html/rfc4408): Sender Policy Framework (SPF) for Authorizing Use of Domains in E-Mail, Version 1\n- [RFC 5155](https://tools.ietf.org/html/rfc5155): DNS Security (DNSSEC) Hashed Authenticated Denial of Existence\n- [RFC 6844](https://tools.ietf.org/html/rfc6844): DNS Certification Authority Authorization (CAA) Resource Record\n- [RFC 6891](https://tools.ietf.org/html/rfc6891): Extension Mechanisms for DNS (EDNS(0))\n- [RFC 7553](https://tools.ietf.org/html/rfc7553): The Uniform Resource Identifier (URI) DNS Resource Record";
        buildType = "Configure";
      };
      components = {
        resolv = {
          depends  = [
            hsPkgs.base
            hsPkgs.base16-bytestring
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
          ];
        };
        tests = {
          resolv. = {
            depends  = [
              hsPkgs.resolv
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.directory
              hsPkgs.filepath
            ];
          };
        };
      };
    }