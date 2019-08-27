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
      specVersion = "1.8";
      identifier = { name = "MFlow"; version = "0.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto Gómez Corona";
      homepage = "";
      url = "";
      synopsis = "stateful, RESTful web framework";
      description = "MFlow is a Web Framework that turns Web programing back into just ordinary programming by automating all the extra\ncomplexities.\n\nThe goals of MFlow are:\n\n-To invert back the inversion of control of web applications and turn web programming into ordinary, intuitive, imperative-like, programming as seen by the programmer.\n\n-At the same time, to maintain, for the user, all the freedom that it has in web applications.\n-For scalability-sensitive applications, to avoid the fat state snapshots that continuation based frameworks need to cope with these two previous requirements. State replication and Horizontal scalability must be possible.\n\n-For REST advocates, to maintain the elegant notation of REST urls and the statelessness of GET requests.\n\n-For expert haskell programmers, to reuse the already existent web libraries and techniques.\n\n-For beginner programmers and for Software Enginners, to provide with a high level DSL of reusable, self contained widgets for the user interface, and multipage procedures that can work together provided that they statically typecheck, with zero configuration.\n\n-For highly interactive applications, to give dynamic widgets that have their own dynamic behaviors in the page, and communicate themselves without the need of explicit  JavaScript programming.\n\n-No deployment, in order to speed up the development process. see <http://haskell-web.blogspot.com.es/2013/05/a-web-application-in-tweet.html>\n\nMFlow try to solve the first requirements using a different approach. The routes are expressed as normal, monadic haskell code in the FlowM monad. Local links point to alternative routes within this monadic computation just like a textual menu in a console application. Any GET page is directly reachable by means of a RESTful URL.\n\nAt any moment the flow can respond to the back button or to any RESTful path that the user may paste in the navigation bar. If the procedure is waiting for another different page, the FlowM monad backtrack until the path partially match. From this position on, the execution goes forward until the rest of the path match.  Thus, no matter the previous state of the server process, it recover the state of execution appropriate for the request. This way the server process is virtually stateless for any GET request. However, it is possible to store a session state, which may backtrack or not when the navigation goes back and forth. It is up to the programmer. Synchronization between server state and web browser state is supported out-of-the-box.\n\nWhen the state matters, and user interactions can last for long, such are shopping carts etc. It uses a log for thread state persistence. The server process shut itself down after a programmer defined timeout. Once a new request of the same user arrive, the log is used to recover the process state. There is no need to store a snapshot of every continuation, just the result of each step.\n\nState consistence and transactions are given by the TCache package. It is data cache within the STM monad (Software Transactional Memory).  Serialization and deserialization of data is programmer defined, so it can adapt it to any database, although any other database interface can be used. Default persistence in files comes out of the box for rapid development purposes.\n\nThe processes interact trough widgets, that are an extension of formlets with additional applicative combinators , formatting, link management, callbacks, modifiers, caching and AJAX. All is coded in pure haskell. Each widget return statically typed data. They can dynamically modify themselves using AJAX internally (ust prefix it with autorefresh). They are auto-contained: they may include their own JavaScript code, server code and client code in a single pure Haskell procedure that can be combined with other widgets with no other configuration.\n\nTo combine widgets, applicative combinators are used. Widgets with dynamic behaviours can use the monadic syntax and callbacks.\n\nThe interfaces and communications are abstract, but there are bindings for blaze-html, HSP, Text.XHtml and byteString, Hack and WAI but it can be extended to non Web based architectures.\n\nBindings for hack, and hsp >= 0.8,  are not compiled by Hackage, and do not appear, but are included in the package files. To use them, add then to the exported modules and execute cabal install\n\nThe version 0.3.1 includes:\n\n- Push widgets: http://haskell-web.blogspot.com.es/2013/07/maxwell-smart-push-counter.html\n\n- Complete execution traces for errors: http://haskell-web.blogspot.com.es/2013/07/automatic-error-trace-generation-in.html\n\nThe version 0.3 added:\n- RESTful URLs: http://haskell-web.blogspot.com.es/2013/07/the-web-navigation-monad.html\n\n- Automatic independent refreshing of widgets via Ajax. (see http://haskell-web.blogspot.com.es/2013/06/and-finally-widget-auto-refreshing.html)\n\n- Page flows: Monadic widgets that can express his own behaviour and can run its own independent page flow. (see http://haskell-web.blogspot.com.es/2013/06/the-promising-land-of-monadic-formlets.html)\n\n- Widget callbacks, used in page flows, that change the rendering of the widget (see http://haskell-web.blogspot.com.es/2013/06/callbacks-in-mflow.html)\n\n- Widgets in modal and non modal dialogs (using jQuery dialog)\n\n- Other jQuery widgets as MFlow widgets\n\nThe version 0.2 added better WAI integration, higher level dynamic Widgets, content management, multilanguage, blaze-html support, stateful ajax for server-side control, user-defined data in sessions and widget requirements for automatic installation of scripts, CSS and server flows.\n\nThe version 0.1 had transparent back button management, cached widgets, callbacks, modifiers, heterogeneous formatting, AJAX, and WAI integration.\n\n\nSee \"MFlow.Forms\" for details\n\nTo do:\n\n-Clustering\n\nIn this release, this issue has been fixed: <https://github.com/agocorona/MFlow/issues/7>";
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
          (hsPkgs."monadloc" or (buildDepError "monadloc"))
          (hsPkgs."hamlet" or (buildDepError "hamlet"))
          ];
        };
      };
    }