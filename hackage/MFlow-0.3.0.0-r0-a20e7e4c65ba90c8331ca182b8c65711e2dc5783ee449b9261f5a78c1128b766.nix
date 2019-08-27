let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "MFlow"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto Gómez Corona";
      homepage = "";
      url = "";
      synopsis = "stateful, RESTful web framework";
      description = "MFlow run stateful server processes. This version is the first stateful web framework\nthat is as RESTful as a web framework can be.\n\nThe routes are expressed as normal, monadic haskell code in the FlowM monad. Local links\npoint to alternative routes within this monadic computation just like a textual menu\nin a console application. Any GET page is directly reachable by means of a RESTful URL.\n\nAll the flow of requests and responses are coded by the programmer in a single procedure.\nAllthoug single request-response flows are possible. Therefore, the code is\nmore understandable. It is not continuation based. It uses a log for thread state persistence and backtracking for\nhandling the back button. Back button state syncronization is supported out-of-the-box\n\nThe MFlow architecture is scalable, since the state is serializable and small\n\nThe processes are stopped and restarted by the\napplication server on demand, including the execution state (if the Wokflow monad is used).\nTherefore session management is automatic. State consistence and transactions are given by the TCache package.\n\nThe processes interact trough widgets, that are an extension of formlets with\nadditional applicative combinators, formatting, link management, callbacks, modifiers, caching,\nbyteString conversion and AJAX. All is coded in pure haskell.\n\nThe interfaces and communications are abstract, but there are bindings for blaze-html, HSP, Text.XHtml and byteString\n, Hack and WAI but it can be extended to non Web based architectures.\n\nBindings for hack, and hsp >= 0.8,  are not compiled by Hackage, and do not appear, but are included in the package files.\nTo use them, add then to the exported modules and execute cabal install\n\nIt is designed for applications that can be run with no deployment with runghc in order\nto speed up the development process. see <http://haskell-web.blogspot.com.es/2013/05/a-web-application-in-tweet.html>\n\nThis release includes:\n\n- /RESTful/ URLs\n\n- Automatic independent refreshing of widgets via Ajax. (see <http://haskell-web.blogspot.com.es/2013/06/and-finally-widget-auto-refreshing.html>)\n\n- Now each widget can be monadic so it can express his own behaviour and can run its own independent page flow. (see <http://haskell-web.blogspot.com.es/2013/06/the-promising-land-of-monadic-formlets.html>)\n\n- Per-widget callbacks, used in page flows, that change the rendering of the widget (see <http://haskell-web.blogspot.com.es/2013/06/callbacks-in-mflow.html>)\n\n- Widgets in modal and non modal dialogs  (using jQuery dialog)\n\n- Other jQuery widgets as MFlow widgets: spinner, datepicker\n\nThe version 0.2 added better WAI integration, higher level dynamic Widgets, content management, multilanguage, blaze-html support,\nstateful ajax for server-side control, user-defined data in sessions and widget requirements for automatic installation of scripts, CSS and server flows.\n\nThe version  0.1 added transparent back button management, cached widgets, callbacks, modifiers, heterogeneous formatting, AJAX,\nand WAI integration.\n\nSee \"MFlow.Forms\" for details\n.             .\nTo do:\n\n-Clustering\n\n-Automatic error traces\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Workflow" or (buildDepError "Workflow"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
          (hsPkgs."xhtml" or (buildDepError "xhtml"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."RefSerialize" or (buildDepError "RefSerialize"))
          (hsPkgs."TCache" or (buildDepError "TCache"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."warp" or (buildDepError "warp"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
          ];
        };
      };
    }