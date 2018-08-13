{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
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
        version = "0.6.0.0";
      };
      license = "LicenseRef-GPL";
      copyright = "Simon Meier, Andreas Lochbihler, ETH Zurich, 2009-2013";
      maintainer = "Simon Meier <iridcode@gmail.com>";
      author = "Simon Meier <iridcode@gmail.com>,\nAndreas Lochbihler <andreas.lochbihler@inf.ethz.ch>";
      homepage = "";
      url = "";
      synopsis = "Automatic generation of Isabelle/HOL correctness proofs\nfor security protocols.";
      description = "scyther-proof is a security protocol verification tool\nbased on an algorithm similar to the Scyther tool developed\nby Cas Cremers\n(<http://people.inf.ethz.ch/cremersc/scyther/index.html>).\nThe theory underlying scyther-proof is described in the\n2013 Journal of Computer Security paper\n\\\"Efficient Construction of\nMachine-Checked Protocol Security Proofs\\\"\nby Meier, Cremers, and Basin available from\n<https://github.com/meiersi/scyther-proof/tree/master/publications>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "scyther-proof" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.safe)
            (hsPkgs.mtl)
            (hsPkgs.cmdargs)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.time)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.tagsoup)
            (hsPkgs.json)
            (hsPkgs.uniplate)
          ];
        };
      };
    };
  }