{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "httpd-shed";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Andy Gill";
      maintainer = "Andy Gill";
      author = "Andy Gill, Brandon Moore, Henning Thielemann, John Van Enk.";
      homepage = "";
      url = "";
      synopsis = "A simple web-server with an interact style API";
      description = "This web server promotes a Request to IO Response function\ninto a local web server. The user can decide how to interpret\nthe requests, and the library is intended for implementing Ajax APIs.";
      buildType = "Simple";
    };
    components = {
      "httpd-shed" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
        ];
      };
      exes = {
        "httpd-shed-test" = {};
      };
    };
  }