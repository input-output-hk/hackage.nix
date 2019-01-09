{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0.1";
      identifier = { name = "hobbits"; version = "1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "emw4@rice.edu";
      author = "Eddy Westbrook, Nicolas Frisby, Paul Brauner";
      homepage = "";
      url = "";
      synopsis = "A library for canonically representing terms with binding";
      description = "A library for canonically representing terms with binding via a\nconstructor for introducing fresh names and a restricted API that avoids the\nneed for alpha-equivalence.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.syb)
          (hsPkgs.mtl)
          (hsPkgs.type-equality)
          (hsPkgs.tagged)
          (hsPkgs.deepseq)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.th-expand-syns)
          (hsPkgs.transformers)
          ];
        };
      };
    }