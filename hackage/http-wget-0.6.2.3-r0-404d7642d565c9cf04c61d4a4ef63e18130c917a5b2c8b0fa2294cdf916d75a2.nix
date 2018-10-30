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
      specVersion = "1.2";
      identifier = {
        name = "http-wget";
        version = "0.6.2.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/http-wget/tree/master";
      url = "";
      synopsis = "Provide a simple HTTP client interface by wrapping the wget\ncommand line tool. (deprecated)";
      description = "This provides the simplest interface I could imagine to\nmaking HTTP requests. It supports GET and POST parameters.\nSince it simply wraps the WGET program, there are no\nlibrary dependencies, and it automatically gets HTTPS.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.failure)
          (hsPkgs.transformers)
        ];
      };
    };
  }