{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "tensor-safe"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 Leonardo Pineyro";
      maintainer = "leopiney@gmail.com";
      author = "Leonardo Pineyro";
      homepage = "https://github.com/leopiney/tensor-safe#readme";
      url = "";
      synopsis = "Create valid deep neural network architectures";
      description = "TensorSafe provides a very simple API to create deep neural networks structures which are validated using Dependent Types. Given a list of Layers and an initial Shape, TensorSafe is able to check and corroborate the structure of the network. Also, it's possible to extract the definition and compile it to a target language like Python and JavaScript.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.casing)
          (hsPkgs.cmdargs)
          (hsPkgs.containers)
          (hsPkgs.extra)
          (hsPkgs.formatting)
          (hsPkgs.ghc-typelits-extra)
          (hsPkgs.hint)
          (hsPkgs.singletons)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.vector-sized)
          ];
        };
      exes = {
        "tensor-safe" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.casing)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.extra)
            (hsPkgs.formatting)
            (hsPkgs.ghc-typelits-extra)
            (hsPkgs.hint)
            (hsPkgs.singletons)
            (hsPkgs.tensor-safe)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.vector-sized)
            ];
          };
        };
      };
    }