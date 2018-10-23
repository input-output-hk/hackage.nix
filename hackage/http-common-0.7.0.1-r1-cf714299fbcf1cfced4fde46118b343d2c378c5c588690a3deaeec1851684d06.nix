{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "http-common";
        version = "0.7.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Â© 2012-2013 Operational Dynamics Consulting, Pty Ltd and Others";
      maintainer = "Andrew Cowie <andrew@operationaldynamics.com>";
      author = "Andrew Cowie <andrew@operationaldynamics.com>";
      homepage = "http://research.operationaldynamics.com/projects/http-streams/";
      url = "";
      synopsis = "Common types for HTTP clients and servers";
      description = "/Overview/\n\nBase types used by a variety of HTTP clients and servers. See http-streams\n\"Network.Http.Client\" or pipes-http \"Pipes.Http.Client\" for full\ndocumentation. You can import @Network.Http.Types@ if you like, but both\nhttp-streams and pipes-http re-export this package's types and functions.";
      buildType = "Simple";
    };
    components = {
      "http-common" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.base64-bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.network)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }