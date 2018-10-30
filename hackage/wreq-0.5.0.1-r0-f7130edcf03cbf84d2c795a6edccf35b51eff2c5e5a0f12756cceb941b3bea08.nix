{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      doctest = true;
      aws = false;
      httpbin = false;
      developer = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "wreq";
        version = "0.5.0.1";
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
      "library" = {
        depends  = [
          (hsPkgs.psqueues)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.authenticate-oauth)
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.byteable)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.cryptohash)
          (hsPkgs.exceptions)
          (hsPkgs.ghc-prim)
          (hsPkgs.hashable)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.mime-types)
          (hsPkgs.time-locale-compat)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "httpbin" = {
          depends  = pkgs.lib.optionals (!(!flags.httpbin)) [
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.containers)
            (hsPkgs.snap-core)
            (hsPkgs.snap-server)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unix-compat)
            (hsPkgs.uuid)
          ];
        };
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.containers)
            (hsPkgs.hashable)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
            (hsPkgs.lens)
            (hsPkgs.lens-aeson)
            (hsPkgs.network-info)
            (hsPkgs.snap-core)
            (hsPkgs.snap-server)
            (hsPkgs.temporary)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.unix-compat)
            (hsPkgs.uuid)
            (hsPkgs.vector)
            (hsPkgs.wreq)
          ] ++ pkgs.lib.optional (flags.aws) (hsPkgs.base);
        };
        "doctest" = {
          depends  = pkgs.lib.optionals (!(!flags.doctest)) [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }