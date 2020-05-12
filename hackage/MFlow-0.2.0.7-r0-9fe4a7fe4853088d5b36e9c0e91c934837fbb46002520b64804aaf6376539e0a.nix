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
      identifier = { name = "MFlow"; version = "0.2.0.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto Gómez Corona";
      homepage = "";
      url = "";
      synopsis = "Web app server for stateful processes with safe, composable user interfaces.";
      description = "A Web framework with some unique features thanks to the power of the Haskell language.\nMFlow run stateful server processes; All the flow of requests and responses are coded by the programmer in a single function.\nAllthoug single request-response flows and callbacks are possible. Therefore, the code is\nmore understandable. It is not continuation based. It uses a log for thread state persistence and backtracking forall\nhandling the back button. Because that the persistent state is small and can be synchronized. So\npotentially that makes the MFlow architecture scalable\n\nThese processes are stopped and restarted by the\napplication server on demand, including its execution state. Therefore session management\nis automatic. State consistence and transactions are given by the TCache package.\n\nThe processes interact trough widgets, that are an extension of formlets with\nadditional applicative combinators, formatting, link management, callbacks, modifiers, caching,\nbyteString conversion and AJAX. All is coded in pure haskell.\n\nThe interfaces and communications are abstract, but there are bindings for blaze-html, HSP, Text.XHtml and byteString\n, Hack and WAI but it can be extended to non Web based architectures.\n\nBindings for hack, and hsp >= 0.8,  are not compiled by Hackage, and do not appear, but are included in the package files.\nTo use them, add then to the exported modules and execute cabal install\n\nThe previous release add transparent back button management, cached widgets, callbacks, modifiers, heterogeneous formatting, AJAX,\nand WAI integration.\n\nThis version add better WAI integration, higher level dynamic Widgets, content management, multilanguage, blaze-html support,\nstateful ajax for server-side control, user-defined data in sessions and widget requirements for automatic installation of scripts, CSS and server flows.\n\nIt is designed for applications that can be run with no deployment with runghc in order\nto speed up the development process.\n\nSee \"MFlow.Forms\" for details\n\nAlthough still it is experimental, it is being used in at least one future commercial project. So I have te commitment to\ncontinue its development. There are many examples in the documentation and in the package.\n\nIn this release preventGoingBack was added\n\nTo do:\n\n-Clustering\n";
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
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          ];
        buildable = true;
        };
      };
    }