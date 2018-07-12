{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "MFlow";
          version = "0.4.5.13";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "agocorona@gmail.com";
        author = "Alberto Gómez Corona";
        homepage = "";
        url = "";
        synopsis = "stateful, RESTful web framework";
        description = "MFlow is a web framework that turns the mess of web programming from handlers and configuration files back into sane and normal programming. Your code is the website.\n\n\nThe goals of MFlow are.\n~~~\n-Inverting back the inversion of control of web applications and turn web programming into ordinary, intuitive, imperative-like programming.\n\n-At the same time, maintaining for the programmer all the freedom that they have in web applications. MFlow keeps out of your way.\n\n-For scalability-sensitive applications, no fat state snapshots that other continuation-based frameworks need to cope with these two previous requirements. State replication and horizontal scalability are central to MFlow's philosophy.\n\n-For REST advocates, MFlow maintains the elegant notation of REST URLs and the statelessness of GET requests.\n\n-For expert Haskell programmers, reuse of already existing web libraries and techniques is trivial.\n\n-For beginner programmers and for software engineers, MFlow provides a high level DSL of reusable and self contained widgets for the user interface, and multipage procedures that work together provided that they statically typecheck with zero configuration.\n\n-For highly interactive applications, MFlow gives dynamic widgets that have their own behaviors in the page and they communicate without the need of explicit JavaScript programming.\n\n-No deployment, speed up the development process. see <http://haskell-web.blogspot.com.es/2013/05/a-web-application-in-tweet.html>\n\n\nHow navigation works\n~~~\nMFlow solves the problem of re-inversion of control by using a different approach, routes are expressed as normal monadic Haskell code in the FlowM monad, local links point to alternative routes within this monadic computation, this means any GET page is directly reachable by means of a RESTful URL.\n\nAt any moment the flow can respond to the back button or to any RESTful path that the user may paste in the navigation bar. If the procedure is waiting for another different page, the FlowM monad backtrack until the paths partially match. From this position on the execution goes forward until the rest of the paths match. Thus, no matter the previous state of the server process it will recover the state of execution appropriate for the request. This way the server process is virtually stateless for any GET request. It is also possible to store a session state, which may backtrack or not, when the navigation goes back and forth. MFlow keeps it all in sync, synchronization between server state and web browser state is supported out-of-the-box.\n\nWhen the state matters, and user interactions can last for long period of time, such are shopping carts etc., MFlow uses a log for thread state persistence. The server process shuts itself down after a programmer defined timeout, once a new request of the same user arrives, the log is used to recover the process state. There is no need to store a snapshot of every continuation, just the result of each step. This solves the problem of fat state snapshots and give a very lightweight way to handle state.\n\n\nData tier\n~~~\nState consistency and transactions are handled by the TCache package.\n\nwww.hackage.haskell.org/package/TCache\n\nIt is data cache within the STM monad (Software Transactional Memory), serialization and deserialization of data is programmer defined. TCache can adapt to any database, default persistence in files comes out of the box for rapid development purposes, but you can switch to a variety of backends when needed, see the database examples for more details.\n\n\nWidgets\n~~~\nThe processes interact through widgets, which are an extension of formlets with additional applicative combinators, formatting, link management, callbacks, modifiers, caching, and AJAX. All of it is coded in pure Haskell and you use pure Haskell to make your own widgets. Each widget return statically typed data, they can dynamically modify themselves using AJAX internally (just prefix it with auto refresh), are auto-contained: they may include their own JavaScript code, server code and client code in a single pure Haskell procedure that can be combined with other widgets with no other configuration.\n\nTo combine widgets, applicative combinators are used. Widgets with dynamic behaviors that use the monadic syntax and callbacks. When you combine widgets, everything is type checked and making large websites by gluing together small reusable building blocks is the entire aim of the MFlow project.\n\n\nModularity\n~~~\nThe interfaces and communications are abstract and there are bindings for blaze-HTML, HSP, Text.XHtml, ByteString, Hack, and WAI. So it can be extended to non web based architectures.\n\nBindings for hack, and HSP >= 0.8,  are not installed by default, but are included in the package files. To use them, add them to the exported modules and execute cabal install\n\nIt is designed for applications that can be run with no deployment with runghc in order to speed up the development process. see <http://haskell-web.blogspot.com.es/2013/05/a-web-application-in-tweet.html>\n\n\nFeatures\n~~~\n\n-Push widgets: http://haskell-web.blogspot.com.es/2013/07/maxwell-smart-push-counter.html\n\n-Complete execution traces for errors: http://haskell-web.blogspot.com.es/2013/07/automatic-error-trace-generation-in.html\n\n-RESTful URLs: http://haskell-web.blogspot.com.es/2013/07/the-web-navigation-monad.html\n\n-Automatic, independent refreshing of widgets via Ajax. (see http://haskell-web.blogspot.com.es/2013/06/and-finally-widget-auto-refreshing.html)\n\n-Besides applicative syntax (declarative-like) each widget can use the monadic syntax (imperative-like) so widgets can express their own behavior and can run its own independent page flow. (see http://haskell-web.blogspot.com.es/2013/06/the-promising-land-of-monadic-formlets.html)\n\n-Per-widget callbacks, used in page flows, that change the rendering of the widget (see http://haskell-web.blogspot.com.es/2013/06/callbacks-in-mflow.html)\n\n-Widgets in modal and non modal dialogues (using jQuery dialog)\n\n-Other jQuery widgets as MFlow widgets\n\n-WAI integration\n\n-Content management and multilanguage\n\n-blaze-html support\n\n-Ajax\n\n-User-defined data in sessions\n\n-Widget requirements for automatic installation of scripts, CSS and server flows.\n\n-Transparent back button management\n\n-Cached widgets\n\n-Callbacks\n\n-Lazy load of widgets\n\n-Web Services\n\n\nChangelog\n~~~\n\n0.4.5.10 compatibility with ghc 7.10\n\n0.4.5.8 added rawSend\n\nThe version 0.4.5.4 add compatibility with GHC 7.8\n\nThe version 0.4.5 composable HTTP caching, lazy load, caching datasets in the browser HTTP cache\n\nThe version 0.4.0 add encrypted cookies, secure sessions, add REST web services, fixes UTF8 errors, pageFlow fixes, add onBacktrack, compensate\n\nThe version 0.3.3 run with wai 2.0\n\nThe version 0.3.2 add runtime templates. It also add witerate and dField, two modifiers for single page\ndevelopment. dField creates a placeholder for a widget that is updated via implicit AJAX by witerate.\nwww.haskell-web.blogspot.com.es/2013/11/more-composable-elements-for-single.html\n\nThe version 0.3.1 included:\n\n- Push widgets: 'http://haskell-web.blogspot.com.es/2013/07/maxwell-smart-push-counter.html'\n\n- Complete execution traces for errors: 'http://haskell-web.blogspot.com.es/2013/07/automatic-error-trace-generation-in.html'\n\nThe version 0.3 added:\n- RESTful URLs: 'http://haskell-web.blogspot.com.es/2013/07/the-web-navigation-monad.html'\n\n- Automatic independent refreshing of widgets via Ajax. (see 'http://haskell-web.blogspot.com.es/2013/06/and-finally-widget-auto-refreshing.html')\n\n- Page flows: Monadic widgets that can express his own behavior and can run its own independent page flow. (see http://haskell-web.blogspot.com.es/2013/06/the-promising-land-of-monadic-formlets.html)\n\n- Widget callbacks, used in page flows, that change the rendering of the widget (see http://haskell-web.blogspot.com.es/2013/06/callbacks-in-mflow.html)\n\n- Widgets in modal and non modal dialogues (using jQuery dialog)\n\n- Other jQuery widgets as MFlow widgets\n\nThe version 0.2 added better WAI integration, higher level dynamic Widgets, content management, multilanguage, blaze-HTML support, stateful Ajax for server-side control, user-defined data in sessions and widget requirements for automatic installation of scripts, CSS and server flows.\n\nThe version 0.1 had transparent back button management, cached widgets, callbacks, modifiers, heterogeneous formatting, AJAX, and WAI integration.\n\n\nSee \"MFlow.Forms\" for details\n\nTo do:\n\n-Clustering\n";
        buildType = "Simple";
      };
      components = {
        "MFlow" = {
          depends  = [
            hsPkgs.Workflow
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.extensible-exceptions
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.RefSerialize
            hsPkgs.TCache
            hsPkgs.stm
            hsPkgs.time
            hsPkgs.old-time
            hsPkgs.vector
            hsPkgs.directory
            hsPkgs.utf8-string
            hsPkgs.wai
            hsPkgs.wai-extra
            hsPkgs.resourcet
            hsPkgs.case-insensitive
            hsPkgs.http-types
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.text
            hsPkgs.parsec
            hsPkgs.warp
            hsPkgs.warp-tls
            hsPkgs.random
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
            hsPkgs.monadloc
            hsPkgs.clientsession
            hsPkgs.pwstore-fast
          ];
        };
      };
    }