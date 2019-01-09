{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { network-bytestring = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "http-conduit"; version = "1.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/book/http-conduit";
      url = "";
      synopsis = "HTTP client package with conduit interface and HTTPS support.";
      description = "This package uses attoparsec for parsing the actual contents of the HTTP connection. It also provides higher-level functions which allow you to avoid direct usage of conduits. See <http://www.yesodweb.com/book/http-conduit> for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.failure)
          (hsPkgs.conduit)
          (hsPkgs.zlib-conduit)
          (hsPkgs.blaze-builder-conduit)
          (hsPkgs.attoparsec-conduit)
          (hsPkgs.attoparsec)
          (hsPkgs.utf8-string)
          (hsPkgs.blaze-builder)
          (hsPkgs.http-types)
          (hsPkgs.cprng-aes)
          (hsPkgs.tls)
          (hsPkgs.tls-extra)
          (hsPkgs.monad-control)
          (hsPkgs.containers)
          (hsPkgs.certificate)
          (hsPkgs.case-insensitive)
          (hsPkgs.base64-bytestring)
          (hsPkgs.asn1-data)
          (hsPkgs.data-default)
          (hsPkgs.text)
          (hsPkgs.transformers-base)
          (hsPkgs.lifted-base)
          ] ++ (if flags.network-bytestring
          then [ (hsPkgs.network) (hsPkgs.network-bytestring) ]
          else [ (hsPkgs.network) ]);
        };
      };
    }