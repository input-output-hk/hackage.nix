{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      threaded = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "scyther-proof";
          version = "0.4.1.0";
        };
        license = "LicenseRef-GPL";
        copyright = "Simon Meier, ETH Zurich, 2009-2011";
        maintainer = "Simon Meier <simon.meier@inf.ethz.ch>";
        author = "Simon Meier <simon.meier@inf.ethz.ch>";
        homepage = "http://www.infsec.ethz.ch/people/meiersi/";
        url = "";
        synopsis = "Automatic generation of Isabelle/HOL correctness proofs for security protocols.";
        description = "scyther-proof is a security protocol verification tool\nbased on an algorithm similar to the Scyther tool developed\nby Cas Cremers\n(<http://people.inf.ethz.ch/cremersc/scyther/index.html>).\nThe theory underlying scyther-proof is described in the\npaper \\\"Strong Invariants for the Efficient Construction of\nMachine-Checked Protocol Security Proofs\\\" by Meier,\nCremers, and Basin available from\n<http://people.inf.ethz.ch/meiersi/publications/index.html>";
        buildType = "Simple";
      };
      components = {
        exes = {
          scyther-proof = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.safe
              hsPkgs.mtl
              hsPkgs.cmdargs
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.time
              hsPkgs.parsec
              hsPkgs.pretty
              hsPkgs.tagsoup
              hsPkgs.json
              hsPkgs.uniplate
            ];
          };
        };
      };
    }