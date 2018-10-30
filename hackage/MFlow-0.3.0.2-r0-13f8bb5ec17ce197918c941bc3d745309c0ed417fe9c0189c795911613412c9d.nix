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
      specVersion = "1.8";
      identifier = {
        name = "MFlow";
        version = "0.3.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto Gómez Corona";
      homepage = "";
      url = "";
      synopsis = "stateful, RESTful web framework";
      description = "MFlow run stateful server processes. This version is the first stateful web framework\nthat is as RESTful as a web framework can be.\n\nThe routes are expressed as normal, monadic haskell code in the FlowM monad. Local links\npoint to alternative routes within this monadic computation just like a textual menu\nin a console application. Any GET page is directly reachable by means of a RESTful URL.\n\nAll the flow of requests and responses are coded by the programmer in a single procedure.\nAllthoug single request-response flows are possible. Therefore, the code is\nmore understandable. It is not continuation based. It uses a log for thread state persistence and backtracking for\nhandling the back button. Back button state syncronization is supported out-of-the-box\n\nThe MFlow architecture is scalable, since the state is serializable and small\n\nThe processes are stopped and restarted by the\napplication server on demand, including the execution state (if the Wokflow monad is used).\nTherefore session management is automatic. State consistence and transactions are given by the TCache package.\n\nThe processes interact trough widgets, that are an extension of formlets with\nadditional applicative combinators, formatting, link management, callbacks, modifiers, caching,\nbyteString conversion and AJAX. All is coded in pure haskell.\n\nThe interfaces and communications are abstract, but there are bindings for blaze-html, HSP, Text.XHtml and byteString\n, Hack and WAI but it can be extended to non Web based architectures.\n\nBindings for hack, and hsp >= 0.8,  are not compiled by Hackage, and do not appear, but are included in the package files.\nTo use them, add then to the exported modules and execute cabal install\n\nIt is designed for applications that can be run with no deployment with runghc in order\nto speed up the development process. see <http://haskell-web.blogspot.com.es/2013/05/a-web-application-in-tweet.html>\n\nThis release includes:\n\n- /RESTful/ URLs\n\n- Automatic independent refreshing of widgets via Ajax. (see <http://haskell-web.blogspot.com.es/2013/06/and-finally-widget-auto-refreshing.html>)\n\n- Now each widget can be monadic so it can express his own behaviour and can run its own independent page flow. (see <http://haskell-web.blogspot.com.es/2013/06/the-promising-land-of-monadic-formlets.html>)\n\n- Per-widget callbacks, used in page flows, that change the rendering of the widget (see <http://haskell-web.blogspot.com.es/2013/06/callbacks-in-mflow.html>)\n\n- Widgets in modal and non modal dialogs  (using jQuery dialog)\n\n- Other jQuery widgets as MFlow widgets: spinner, datepicker\n\nThe version 0.2 added better WAI integration, higher level dynamic Widgets, content management, multilanguage, blaze-html support,\nstateful ajax for server-side control, user-defined data in sessions and widget requirements for automatic installation of scripts, CSS and server flows.\n\nThe version  0.1 added transparent back button management, cached widgets, callbacks, modifiers, heterogeneous formatting, AJAX,\nand WAI integration.\n\nSee \"MFlow.Forms\" for details\n.             .\nTo do:\n\n-Clustering\n\n-Automatic error traces\n\nIn this release I commented out the build of the demo/test program.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.Workflow)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.xhtml)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.RefSerialize)
          (hsPkgs.TCache)
          (hsPkgs.stm)
          (hsPkgs.old-time)
          (hsPkgs.vector)
          (hsPkgs.directory)
          (hsPkgs.utf8-string)
          (hsPkgs.wai)
          (hsPkgs.case-insensitive)
          (hsPkgs.http-types)
          (hsPkgs.conduit)
          (hsPkgs.text)
          (hsPkgs.parsec)
          (hsPkgs.warp)
          (hsPkgs.random)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
        ];
      };
    };
  }