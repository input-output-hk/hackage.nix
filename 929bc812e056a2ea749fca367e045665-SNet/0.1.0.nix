{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "SNet";
          version = "0.1.0";
        };
        license = "LGPL-3.0-only";
        copyright = "Copyright © 2012 Merijn Verstraaten";
        maintainer = "Merijn Verstraaten <m.e.verstraaten@uva.nl>";
        author = "Merijn Verstraaten";
        homepage = "http://www.snet-home.org/";
        url = "";
        synopsis = "Declarative coördination language for streaming networks.";
        description = "S-Net is a declarative coördination language for describing streaming\nnetworks of asynchronous components. Streaming networks are defined using\nan expression language of four network combinators: serial composition,\nparallel composition, serial replication and parallel replication. One-shot\ndata synchronisation is provided by the built-in syncrocell component.\n\nStreams are associated with record types; collections of data where each\nitem is uniquely identified by its name. Structural subtyping on these\nrecord types directs the flow of data through the streaming network.\n\nFor more information see: <http://www.snet-home.org>";
        buildType = "Custom";
      };
      components = {
        "SNet" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-DSL
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.transformers
          ];
          build-tools = [
            hsPkgs.buildPackages.hsc2hs
          ];
        };
      };
    }