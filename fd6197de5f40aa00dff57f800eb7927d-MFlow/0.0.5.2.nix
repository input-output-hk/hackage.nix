{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "MFlow";
          version = "0.0.5.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "agocorona@gmail.com";
        author = "Alberto Gómez Corona";
        homepage = "";
        url = "";
        synopsis = "Web app server for stateful processes with safe, composable user interfaces.";
        description = "It is a Web framework with some unique features thanks to the power of the Haskell language.\nMFlow run stateful server processes. Because flows are stateful, not event driven, the code is more\nunderstandable, because all the flow of request and responses is coded by the programmer in a single function.\nAllthoug single request-response flows and callbacks are possible.\n\nTechnically it is a Web application server for stateful processes (flows) that are optionally persistent.\nThese processes interact with the user trough interfaces made of widgets that return back statically typed responses to\nthe calling process. All is coded in pure haskell (with optional XML from Haskell Server Pages).\nIt adopt and extend the formlet/applicative approach. It has bindings for HSP and Text.XHtml\n\nIt includes Application Server features such is process and session timeouts\nand automatic recovery of flow execution state.\n\nThis release add transparent back button management, cached widgets, callbacks, modifiers, heterogeneous formatting AJAX,\nand WAI integration.\n\nIt is designed for coding an entire application in a single file to be run with runghc in order\nto speed up the prototyping process.\n\nSee \"MFlow.Forms\" for details\n\nAltroug still it is experimental, it is used in at least one future commercial project. So I have te commitment to\ncontinue its development. There are many examples in the documentation and in the package.\n\nTo do:\n\n-Clustering\n";
        buildType = "Simple";
      };
      components = {
        "MFlow" = {
          depends  = [
            hsPkgs.Workflow
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.extensible-exceptions
            hsPkgs.xhtml
            hsPkgs.base
            hsPkgs.hack
            hsPkgs.hack-handler-simpleserver
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.RefSerialize
            hsPkgs.TCache
            hsPkgs.stm
            hsPkgs.old-time
            hsPkgs.vector
            hsPkgs.hsp
            hsPkgs.directory
            hsPkgs.utf8-string
            hsPkgs.wai
            hsPkgs.case-insensitive
            hsPkgs.http-types
            hsPkgs.conduit
            hsPkgs.text
            hsPkgs.parsec
            hsPkgs.warp
          ];
        };
      };
    }