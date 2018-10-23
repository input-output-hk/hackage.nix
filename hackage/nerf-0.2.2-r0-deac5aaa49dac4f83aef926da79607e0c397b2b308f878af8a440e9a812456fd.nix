{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "nerf";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/nerf";
      url = "";
      synopsis = "Nerf, the named entity recognition tool based on linear-chain CRFs";
      description = "The package provides the named entity recognition (NER) tool divided into a\nback-end library (see the \"NLP.Nerf\" module) and the front-end tool nerf.\nUsing the library you can model and recognize named entities (NEs) which,\nfor a particular sentence, take the form of forest with NE category values\nkept in internal nodes and sentence words kept in forest leaves.\n\nTo model NE forests we combine two different techniques. The IOB codec\nis used to translate to and fro between the original, forest representation\nof NEs and the sequence of atomic labels. In other words, it provides two\nisomorphic functions for encoding and decoding between both\nrepresentations. Linear-chain conditional random fields, on the other hand,\nprovide the framework for label modelling and tagging.";
      buildType = "Simple";
    };
    components = {
      "nerf" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.text)
          (hsPkgs.binary)
          (hsPkgs.text-binary)
          (hsPkgs.polysoup)
          (hsPkgs.crf-chain1)
          (hsPkgs.data-named)
          (hsPkgs.monad-ox)
          (hsPkgs.sgd)
          (hsPkgs.polimorf)
          (hsPkgs.dawg)
          (hsPkgs.cmdargs)
        ];
      };
      exes = { "nerf" = {}; };
    };
  }