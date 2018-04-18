{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "learning-hmm";
          version = "0.3.1.2";
        };
        license = "MIT";
        copyright = "Copyright (c) 2014-2015 Mitsuhiro Nakamura";
        maintainer = "Mitsuhiro Nakamura <m.nacamura@gmail.com>";
        author = "Mitsuhiro Nakamura";
        homepage = "https://github.com/mnacamura/learning-hmm";
        url = "";
        synopsis = "Yet another library for hidden Markov models";
        description = "This library provides functions for the maximum likelihood\nestimation of discrete hidden Markov models. At present,\nonly Baum-Welch and Viterbi algorithms are implemented for\nthe plain HMM and the input-output HMM.";
        buildType = "Simple";
      };
      components = {
        learning-hmm = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.hmatrix
            hsPkgs.random-fu
            hsPkgs.random-source
            hsPkgs.vector
          ];
        };
      };
    }