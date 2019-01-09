{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { hspec-jenkins = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "capability"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 EURL Tweag";
      maintainer = "andreas.herrmann@tweag.io";
      author = "";
      homepage = "https://github.com/tweag/capability";
      url = "";
      synopsis = "Extensional capabilities and deriving combinators";
      description = "Standard capability type classes for extensional effects and combinators\nto derive capability instances with little boilerplate.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.dlist)
          (hsPkgs.exceptions)
          (hsPkgs.generic-lens)
          (hsPkgs.lens)
          (hsPkgs.monad-control)
          (hsPkgs.monad-unlift)
          (hsPkgs.mtl)
          (hsPkgs.mutable-containers)
          (hsPkgs.primitive)
          (hsPkgs.safe-exceptions)
          (hsPkgs.streaming)
          (hsPkgs.transformers)
          (hsPkgs.unliftio)
          (hsPkgs.unliftio-core)
          ];
        };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.capability)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.silently)
            (hsPkgs.streaming)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.unliftio)
            ] ++ (pkgs.lib).optional (flags.hspec-jenkins) (hsPkgs.hspec-jenkins);
          };
        };
      };
    }