{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "streaming-utils"; version = "0.1.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "what_is_it_to_do_anything@yahoo.com";
      author = "michaelt";
      homepage = "https://github.com/michaelt/streaming-utils";
      url = "";
      synopsis = "http, attoparsec, pipes and conduit utilities for the streaming libraries";
      description = "Experimental http-client, attoparsec, conduit pipes utilities for use with\nthe <http://hackage.haskell.org/package/streaming streaming> and\n<http://hackage.haskell.org/package/streaming-bytestring streaming bytestring> libraries.\nOther modules are planned.\n\nThis package of course heaps together a number of dependencies.\nPlease raise an issue if this is a problem.\n\nQuestions about usage can be raised as issues, or addressed to the\n<https://groups.google.com/forum/#!forum/haskell-pipes pipes list>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
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
          (hsPkgs.aeson)
          (hsPkgs.json-stream)
          ];
        };
      };
    }