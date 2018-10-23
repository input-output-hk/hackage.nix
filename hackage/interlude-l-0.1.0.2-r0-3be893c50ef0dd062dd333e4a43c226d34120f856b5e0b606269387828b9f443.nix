{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "interlude-l";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Luka Horvat";
      maintainer = "luka.horvat9@gmail.com";
      author = "Luka Horvat";
      homepage = "";
      url = "";
      synopsis = "Prelude replacement based on protolude";
      description = "Prelude replacement based on protolude";
      buildType = "Simple";
    };
    components = {
      "interlude-l" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.protolude)
          (hsPkgs.string-conv)
          (hsPkgs.exceptions)
          (hsPkgs.mtl)
          (hsPkgs.lens)
          (hsPkgs.aeson)
          (hsPkgs.witherable)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.monad-control)
          (hsPkgs.MonadRandom)
        ];
      };
    };
  }