{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Quelea";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2014, KC Sivaramakrishnan";
        maintainer = "Gowtham Kaki <http://gowthamk.github.io>";
        author = "KC Sivaramakrishnan <http://kcsrk.info>";
        homepage = "http://gowthamk.github.io/Quelea";
        url = "";
        synopsis = "Programming with Eventual Consistency over Cassandra.";
        description = "Quelea is a Haskell library that helps programmers develop highly\nscalable applications on the top of eventually consistent NoSQL stores,\nsuch as Cassandra. You can think of Quelea as a mediator between the\napplication programmer and the underlying NoSQL store. It understands both\nthe application requirements and the store semantics, and helps\nprogrammers use NoSQL stores in such a way so as to maximize performance\nand ensure correct application behaviour, both at the same time!  Among\nother things, Quelea library implements:\n\nA Domain-Specific Language (DSL) that lets NoSQL application programmers\ndeclare the consistency requirements of their applications as contracts\n(also called specifications)\n\nA static contract classification procedure that maps high-level\napplication contracts to appropriate low-level consistency guarantees\nprovided by the underlying NoSQL store, and\n\nA run-time that runs application operations after tuning the\nstore consistency to appropriate levels as determined by the\ncontract classification procedure.  While the\nimplementations of DSL and the static contract\nclassification components are largely independent of the\nactual NoSQL store used, the current implementation of\nrun-time component is tailor-made to work with the Cassandra\ndata store.";
        buildType = "Simple";
      };
      components = {
        Quelea = {
          depends  = [
            hsPkgs.cassandra-cql
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.zeromq4-haskell
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.lens
            hsPkgs.template-haskell
            hsPkgs.z3
            hsPkgs.mtl
            hsPkgs.random
            hsPkgs.uuid
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.time
            hsPkgs.unix
            hsPkgs.directory
            hsPkgs.tuple
            hsPkgs.derive
            hsPkgs.process
            hsPkgs.optparse-applicative
          ];
        };
      };
    }