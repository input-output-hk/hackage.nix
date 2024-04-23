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
      identifier = { name = "MFlow"; version = "0.1.5.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto Gómez Corona";
      homepage = "";
      url = "";
      synopsis = "Web app server for stateful processes with safe, composable user interfaces.";
      description = "A Web framework with some unique features thanks to the power of the Haskell language.\nMFlow run stateful server processes. Because flows are stateful, not isolated request-responses, the code is more\nunderstandable, because all the flow of request and responses is coded by the programmer in a single function.\nAllthoug single request-response flows and callbacks are possible.\n\nTechnically it is a Web application server for stateful processes (flows) that are optionally persistent.\nThese processes interact with the user trough interfaces made of widgets that return back statically typed responses to\nthe process that sent the interface (including links). The process is coded in pure haskell (with optional XML from Haskell Server Pages).\nIt adopt and extend the formlet/applicative approach. The interfaces and communication are abstract, but it has bindings for HSP, Text.XHtml and byteString\n, Hack and WAI but it can be extended to non Web based architectures.\n\nIt includes Application Server features such is process and session timeouts\nand automatic recovery of flow execution state.\n\nThis release add transparent back button management, cached widgets, callbacks, modifiers, heterogeneous formatting AJAX,\nand WAI integration.\n\nIt is designed for applications that can be run with no deployment with runghc in order\nto speed up the development process.\n\nSee \"MFlow.Forms\" for details\n\nAltroug still it is experimental, it is used in at least one future commercial project. So I have te commitment to\ncontinue its development. There are many examples in the documentation and in the package.\n\nTo do:\n\n-Clustering\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Workflow" or (errorHandler.buildDepError "Workflow"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hack" or (errorHandler.buildDepError "hack"))
          (hsPkgs."hack-handler-simpleserver" or (errorHandler.buildDepError "hack-handler-simpleserver"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."RefSerialize" or (errorHandler.buildDepError "RefSerialize"))
          (hsPkgs."TCache" or (errorHandler.buildDepError "TCache"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
        ];
        buildable = true;
      };
    };
  }