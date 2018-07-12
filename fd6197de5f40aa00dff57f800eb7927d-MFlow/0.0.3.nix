{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "MFlow";
          version = "0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "agocorona@gmail.com";
        author = "Alberto Gómez Corona";
        homepage = "";
        url = "";
        synopsis = "(Web) application server. Stateful server processes. Simple, statically correct widget combinators.";
        description = "Simple application server with stateful request-response flows, persistent\nand transparent session handling. server process management, combinators for the definition of widgets\nand formlets that can be mixed freely with HTML formatting and produce statically\ntyped web applications. Adopt and extend the best formlet/applicative Haskell traditions\nConsole and window oriented apps are possible.\n\nMFlow (MessageFlow) was created initially as the user interface for the Workflow package\n. Currently is an alpha version. It has\nonly basic authentication but I plan to inprove it for serious applications.\n\nExamples included\n\nIt includes Application Server features such is resource an process management\nand automatic recovery\n\nResource management: The user can define process and session timeout. The\nprocess is automatically rerun after timeout if a new request arrive with transparent\nrecovery of state, at the point of the interrupted dialog  even after server crash.\n\nThe backend operation relies on the Workflow package (\"http:\\/\\/hackage.haskell.org\\/package\\/Workflow/index\"),\nthis gives transparent sessión persistence and recovery, all of this\nis supported by\nTCache (\"http:\\/\\/hackage.haskell.org\\/package\\/TCache/index\"), that gives backend-independent transactions and can be used\ndirectly by the programmer. Persistence in files  for session and data out of the box enables\nvery fast prototyping.\n\nAll the plumbing is hidden to the programmer, There is no methods for\nsession management, database query, recovery and so on. All of this is\ntransparent So the surface exposed to the programmer is minimal.\n\nIncludes generalized formlets that permits the mix of active widgets\nin the same page while remaining statically typed and, thus the programs\ncan verify correctness at compilation time.\n\nIncludes combinators for seamless inclusion of these widgets within\nuser defined HTML formatting. Bindings for Text.XHtml. The widget generation may be easy\nfor user with familiarity with formlets/digestive functors and Text.XHtml formatting.\n\nCurrently it has bindings for the Hack  interface\n\nStreaming facilities.\n\nTo do:\n\nBindings for HSP\n\nClustering\n\nOther bindigs for Hack alternatives";
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
          ];
        };
      };
    }