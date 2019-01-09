{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test = false; network-bytestring = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "http-enumerator"; version = "0.7.3.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/http-enumerator";
      url = "";
      synopsis = "HTTP client package with enumerator interface and HTTPS support. (deprecated)";
      description = "This package has been deprecated in favor of http-conduit (<http://hackage.haskell.org/package/http-conduit>), which provides a more powerful and simpler interface. The API is very similar, and migrating should not be problematic. Send concerns about this move to the maintainer (address listed above).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.failure)
          (hsPkgs.enumerator)
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-enumerator)
          (hsPkgs.utf8-string)
          (hsPkgs.blaze-builder)
          (hsPkgs.zlib-enum)
          (hsPkgs.http-types)
          (hsPkgs.blaze-builder-enumerator)
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
          ] ++ (if flags.network-bytestring
          then [ (hsPkgs.network) (hsPkgs.network-bytestring) ]
          else [ (hsPkgs.network) ]);
        };
      exes = { "http-enumerator" = {}; };
      };
    }