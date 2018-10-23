{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      test = false;
      network-bytestring = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "http-enumerator";
        version = "0.7.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/http-enumerator";
      url = "";
      synopsis = "HTTP client package with enumerator interface and HTTPS support.";
      description = "This package uses attoparsec for parsing the actual contents of the HTTP connection. It also provides higher-level functions which allow you to avoid direct usage of enumerators.\n\nNote that this package has been superceded by http-conduit. If you are not using the enumerator interface of this package at all, it is highly recommended to switch to http-conduit. If you are using enumerators, please consider making the move to http-conduit anyway, as it solves some socket leaks that cannot be addressed with enumerators.";
      buildType = "Simple";
    };
    components = {
      "http-enumerator" = {
        depends  = [
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
          then [
            (hsPkgs.network)
            (hsPkgs.network-bytestring)
          ]
          else [ (hsPkgs.network) ]);
      };
      exes = {
        "http-enumerator" = {};
      };
    };
  }