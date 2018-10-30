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
      specVersion = "1.12";
      identifier = {
        name = "typedflow";
        version = "0.9";
      };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "jean-philippe.bernardy@gu.se";
      author = "Jean-Philippe Bernardy";
      homepage = "";
      url = "";
      synopsis = "Typed frontend to TensorFlow and higher-order deep learning";
      description = "TypedFlow is a typed, higher-order frontend to TensorFlow and a high-level library for deep-learning.\n\nThe main design principles are:\n\n- To make the parameters of layers explicit. This choice makes sharing of parameters explicit and allows to implement \"layers\" as pure functions.\n\n- To provide as precise as possible types. Functions are explicit about the shapes and elements of the tensors that they manipulate (they are often polymorphic in shapes and elements though.)\n\n- To let combinators be as transparent as possible. If a NN layers is a simple tensor transformation it will be exposed as such.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-typelits-knownnat)
          (hsPkgs.pretty-compact)
          (hsPkgs.mtl)
        ];
      };
    };
  }