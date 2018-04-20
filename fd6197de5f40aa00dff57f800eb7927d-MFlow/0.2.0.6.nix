{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "MFlow";
          version = "0.2.0.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "agocorona@gmail.com";
        author = "Alberto Gómez Corona";
        homepage = "";
        url = "";
        synopsis = "Web app server for stateful processes with safe, composable user interfaces.";
        description = "A Web framework with some unique features thanks to the power of the Haskell language.\nMFlow run stateful server processes; All the flow of requests and responses are coded by the programmer in a single function.\nAllthoug single request-response flows and callbacks are possible. Therefore, the code is\nmore understandable.\n\nThese processes are stopped and restarted by the\napplication server on demand, including its execution state. Therefore session management\nis automatic. State consistence and transactions are given by the TCache package.\n\nThe processes interact trough widgets, that are an extension of formlets with\nadditional applicative combinators, formatting, link management, callbacks, modifiers, caching,\nbyteString conversion and AJAX. All is coded in pure haskell.\n\nThe interfaces and communications are abstract, but there are bindings for blaze-html, HSP, Text.XHtml and byteString\n, Hack and WAI but it can be extended to non Web based architectures.\n\nBindings for hack, and hsp >= 0.8,  are not compiled by Hackage, and do not appear, but are included in the package files.\nTo use them, add then to the exported modules and execute cabal install\n\nThe previous release add transparent back button management, cached widgets, callbacks, modifiers, heterogeneous formatting, AJAX,\nand WAI integration.\n\nThis version add better WAI integration, higher level dynamic Widgets, content management, multilanguage, blaze-html support,\nstateful ajax for server-side control, user-defined data in sessions and widget requirements for automatic installation of scripts, CSS and server flows.\n\nIt is designed for applications that can be run with no deployment with runghc in order\nto speed up the development process.\n\nSee \"MFlow.Forms\" for details\n\nAlthough still it is experimental, it is being used in at least one future commercial project. So I have te commitment to\ncontinue its development. There are many examples in the documentation and in the package.\n\nTo do:\n\n-Clustering\n";
        buildType = "Simple";
      };
      components = {
        MFlow = {
          depends  = [
            hsPkgs.Workflow
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.extensible-exceptions
            hsPkgs.xhtml
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.RefSerialize
            hsPkgs.TCache
            hsPkgs.stm
            hsPkgs.old-time
            hsPkgs.vector
            hsPkgs.directory
            hsPkgs.utf8-string
            hsPkgs.wai
            hsPkgs.case-insensitive
            hsPkgs.http-types
            hsPkgs.conduit
            hsPkgs.text
            hsPkgs.parsec
            hsPkgs.warp
            hsPkgs.random
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
          ];
        };
      };
    }