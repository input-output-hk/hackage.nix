{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "streaming-utils";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "what_is_it_to_do_anything@yahoo.com";
      author = "michaelt";
      homepage = "";
      url = "";
      synopsis = "utilities for http-client, attoparsec, pipes etc with streaming and streaming-bytestring";
      description = "Experimental http-client, attoparsec and pipes utilities streaming and streaming-bytestring";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.attoparsec)
          (hsPkgs.streaming)
          (hsPkgs.streaming-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.pipes)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
        ];
      };
    };
  }