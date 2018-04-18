{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      doctest = true;
      httpbin = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wreq";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Bryan O'Sullivan";
        maintainer = "bos@serpentine.com";
        author = "Bryan O'Sullivan <bos@serpentine.com>";
        homepage = "http://www.serpentine.com/wreq";
        url = "";
        synopsis = "An easy-to-use HTTP client library.";
        description = "\nA web client library that is designed for ease of use.\n\nTutorial: <http://www.serpentine.com/wreq/tutorial.html>\n\nFeatures include:\n\n* Simple but powerful `lens`-based API\n\n* A solid test suite, and built on reliable libraries like\nhttp-client and lens\n\n* Session handling includes connection keep-alive and pooling, and\ncookie persistence\n\n* Automatic response body decompression\n\n* Powerful multipart form and file upload handling\n\n* Support for JSON requests and responses, including navigation of\nschema-less responses\n\n* Basic and OAuth2 bearer authentication\n\n* Early TLS support via the tls package";
        buildType = "Custom";
      };
      components = {
        wreq = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.exceptions
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-types
            hsPkgs.lens
            hsPkgs.mime-types
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.time
          ];
        };
        exes = {
          httpbin = {
            depends  = optionals (!(!_flags.httpbin)) [
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.base
              hsPkgs.base64-bytestring
              hsPkgs.bytestring
              hsPkgs.case-insensitive
              hsPkgs.containers
              hsPkgs.snap-core
              hsPkgs.snap-server
              hsPkgs.text
            ];
          };
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.http-client
              hsPkgs.http-types
              hsPkgs.lens
              hsPkgs.temporary
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.text
              hsPkgs.wreq
            ];
          };
          doctest = {
            depends  = optionals (!(!_flags.doctest)) [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
            ];
          };
        };
      };
    }