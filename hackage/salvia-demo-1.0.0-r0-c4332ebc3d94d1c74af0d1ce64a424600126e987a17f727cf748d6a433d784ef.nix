{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "salvia-demo"; version = "1.0.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."monads-fd" or (errorHandler.buildDepError "monads-fd"))
          (hsPkgs."threadmanager" or (errorHandler.buildDepError "threadmanager"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."c10k" or (errorHandler.buildDepError "c10k"))
          (hsPkgs."filestore" or (errorHandler.buildDepError "filestore"))
          (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."salvia" or (errorHandler.buildDepError "salvia"))
          (hsPkgs."salvia-protocol" or (errorHandler.buildDepError "salvia-protocol"))
          (hsPkgs."salvia-extras" or (errorHandler.buildDepError "salvia-extras"))
          (hsPkgs."salvia-sessions" or (errorHandler.buildDepError "salvia-sessions"))
          (hsPkgs."salvia-websocket" or (errorHandler.buildDepError "salvia-websocket"))
        ];
        buildable = true;
      };
      exes = {
        "salvia-demo" = { buildable = true; };
        "salvia-serve" = { buildable = true; };
        "salvia.cgi" = { buildable = true; };
        "salvia-helloworld" = { buildable = true; };
        "salvia-query" = { buildable = true; };
        "salvia-directories" = { buildable = true; };
      };
    };
  }