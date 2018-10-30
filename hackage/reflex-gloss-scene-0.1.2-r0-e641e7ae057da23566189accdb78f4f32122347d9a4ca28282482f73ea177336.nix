{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "reflex-gloss-scene";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Oliver Batchelor";
      maintainer = "saulzar@gmail.com";
      author = "Oliver Batchelor";
      homepage = "https://github.com/saulzar/reflex-gloss-scene";
      url = "";
      synopsis = "A simple scene-graph using reflex and gloss";
      description = "A scenegraph library using gloss and gloss-reflex, with support for picking,\ncontinuous time animations and monad based switching. An example of a framework\ncreated using the reflex-transformers package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.gloss)
          (hsPkgs.gloss-rendering)
          (hsPkgs.reflex-gloss)
          (hsPkgs.reflex)
          (hsPkgs.reflex-transformers)
          (hsPkgs.reflex-animation)
          (hsPkgs.dependent-sum)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.vector-space)
          (hsPkgs.lens)
          (hsPkgs.random)
          (hsPkgs.MonadRandom)
          (hsPkgs.tuple)
          (hsPkgs.semigroups)
          (hsPkgs.profunctors)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gloss)
            (hsPkgs.reflex)
            (hsPkgs.reflex-transformers)
            (hsPkgs.reflex-gloss-scene)
            (hsPkgs.reflex-animation)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.linear)
            (hsPkgs.lens)
            (hsPkgs.containers)
          ];
        };
        "collections" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gloss)
            (hsPkgs.reflex)
            (hsPkgs.reflex-transformers)
            (hsPkgs.reflex-gloss-scene)
            (hsPkgs.reflex-animation)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.linear)
            (hsPkgs.lens)
            (hsPkgs.containers)
          ];
        };
        "frpzoo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gloss)
            (hsPkgs.reflex)
            (hsPkgs.reflex-transformers)
            (hsPkgs.reflex-animation)
            (hsPkgs.reflex-gloss-scene)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.linear)
            (hsPkgs.lens)
            (hsPkgs.containers)
          ];
        };
        "counter" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gloss)
            (hsPkgs.reflex)
            (hsPkgs.reflex-transformers)
            (hsPkgs.reflex-animation)
            (hsPkgs.reflex-gloss-scene)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.linear)
            (hsPkgs.lens)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }