{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      uri = true;
      wai = true;
      snap = true;
      happstack = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.20";
        identifier = {
          name = "web-inv-route";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016";
        maintainer = "dylan@dylex.net";
        author = "Dylan Simon";
        homepage = "";
        url = "";
        synopsis = "Composable, reversible, efficient web routing based on invertible invariants and bijections";
        description = "Utilities to route HTTP requests, mainly focused on path components.  Routes are specified using bijections and invariant functors, allowing run-time composition (routes can be distributed across modules), reverse and forward routing derived from the same specification, and O(log n) lookups.\n\nThere are four steps/components of this package.\n\n1. Route endpoint specification: \"Web.Route.Invertible.Common\"\n\n2. Route map construction: \"Web.Route.Invertible.Common\"\n\n3. Route map lookup: \"Web.Route.Invertible\" (for the generic interface), \"Web.Route.Invertible.Wai\", \"Web.Route.Invertible.Snap\", or \"Web.Route.Invertible.Happstack\"\n\n4. Reverse routing: \"Web.Route.Invertible\" or \"Web.Route.Invertible.URI\"\n\nMost users will just want to import a framework-specific module like \"Web.Route.Invertible.Wai\" (or the generic \"Web.Route.Invertible\"), each of which re-exports \"Web.Route.Invertible.Common\".\nSee test/Main.hs for some examples.";
        buildType = "Simple";
      };
      components = {
        "web-inv-route" = {
          depends  = ((([
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.hashable
            hsPkgs.unordered-containers
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.http-types
            hsPkgs.invertible
          ] ++ pkgs.lib.optional _flags.uri hsPkgs.network-uri) ++ pkgs.lib.optional _flags.wai hsPkgs.wai) ++ pkgs.lib.optional _flags.snap hsPkgs.snap-core) ++ pkgs.lib.optional _flags.happstack hsPkgs.happstack-server;
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.network-uri
              hsPkgs.HUnit
              hsPkgs.web-inv-route
            ];
          };
        };
      };
    }