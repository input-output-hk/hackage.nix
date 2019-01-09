{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "csound-sampler"; version = "0.0.6.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<anton.kholomiov@gmail.com>";
      author = "Anton Kholomiov";
      homepage = "https://github.com/anton-k/csound-sampler";
      url = "";
      synopsis = "A musical sampler based on Csound";
      description = "A simple sampler based on the library csound-expression. We can define loops\nand patterns of samples. An intricate pattern of sound is just few strokes away.\nThe library works in the interpreter. We can listen the results right in the ghci.\nHere is the tutorial <https://github.com/anton-k/csound-sampler>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.csound-expression)
          ];
        };
      };
    }