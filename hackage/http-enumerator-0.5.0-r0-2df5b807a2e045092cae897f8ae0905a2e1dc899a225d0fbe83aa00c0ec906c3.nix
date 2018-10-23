{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      test = false;
      network-bytestring = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "http-enumerator";
        version = "0.5.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/http-enumerator";
      url = "";
      synopsis = "HTTP client package with enumerator interface and HTTPS support.";
      description = "This package uses attoparsec for parsing the actual contents of the HTTP connection. The only gotcha is the withHttpEnumerator function, otherwise should do exactly what you expect.";
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
          (hsPkgs.zlib-bindings)
          (hsPkgs.zlib-enum)
          (hsPkgs.http-types)
          (hsPkgs.blaze-builder-enumerator)
          (hsPkgs.tls)
          (hsPkgs.monad-control)
          (hsPkgs.containers)
          (hsPkgs.certificate)
          (hsPkgs.case-insensitive)
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