{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "http-streams";
        version = "0.4.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Â© 2012-2013 Operational Dynamics Consulting, Pty Ltd and Others";
      maintainer = "Andrew Cowie <andrew@operationaldynamics.com>";
      author = "Andrew Cowie <andrew@operationaldynamics.com>";
      homepage = "http://research.operationaldynamics.com/projects/http-streams/";
      url = "";
      synopsis = "An HTTP client using io-streams";
      description = "/Overview/\n\nAn HTTP client, using the Snap Framework's 'io-streams' library to\nhande the streaming IO. The API is optimized for ease of use for the\nrather common case of code needing to query web services and deal with\nthe result.\n\nThe library is exported in a single module; see \"Network.Http.Client\"\nfor full documentation.";
      buildType = "Custom";
    };
    components = {
      "http-streams" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.io-streams)
          (hsPkgs.HsOpenSSL)
          (hsPkgs.openssl-streams)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "check" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.HsOpenSSL)
            (hsPkgs.MonadCatchIO-transformers)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.blaze-builder)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.io-streams)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.openssl-streams)
            (hsPkgs.snap-core)
            (hsPkgs.snap-server)
            (hsPkgs.system-fileio)
            (hsPkgs.system-filepath)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }