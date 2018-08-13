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
      specVersion = "1.6";
      identifier = {
        name = "salvia-demo";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sfvisser@cs.uu.nl";
      author = "Sebastiaan Visser";
      homepage = "";
      url = "";
      synopsis = "Demo Salvia servers.";
      description = "This package contains six simple example programs that show how to use the\nSalvia web application framework. The first demo, /salvia-demo/, contains a\nbigger example showing off some of the more advanced features and handler\nrunning on the default Salvia server implementation. The second demo,\n/salvia-cgi/ show how to switch the Salvia back-end and run a Salvia handler\nin CGI mode. The third example, /salvia-serve/, is a simple file server that\nuses the /c10k-server/ back-end and the /send-file/ package to server static\nfiles and directories. The other demos illustrate how to use some simple\naspects of the web framework.";
      buildType = "Simple";
    };
    components = {
      "salvia-demo" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.monads-fd)
          (hsPkgs.threadmanager)
          (hsPkgs.stm)
          (hsPkgs.c10k)
          (hsPkgs.filestore)
          (hsPkgs.fclabels)
          (hsPkgs.network)
          (hsPkgs.salvia)
          (hsPkgs.salvia-protocol)
          (hsPkgs.salvia-extras)
          (hsPkgs.salvia-sessions)
          (hsPkgs.salvia-websocket)
        ];
      };
      exes = {
        "salvia-demo" = {};
        "salvia-serve" = {};
        "salvia.cgi" = {};
        "salvia-helloworld" = {};
        "salvia-query" = {};
        "salvia-directories" = {};
      };
    };
  }