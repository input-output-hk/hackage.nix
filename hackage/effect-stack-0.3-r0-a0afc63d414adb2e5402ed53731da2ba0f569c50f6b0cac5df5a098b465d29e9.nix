{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "effect-stack"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@dmwit.com";
      author = "Daniel Wagner";
      homepage = "";
      url = "";
      synopsis = "Reducing the pain of transformer stacks with duplicated effects";
      description = "The @mtl@ provides a nice way to write monadic actions\nwhich take advantage of a particular kind of effect (say,\nstatefulness or exception handling) without being forced\nto say exactly which monad is providing that effect.\nHowever, if a transformer stack includes two transformers\nthat provide the given effect, @mtl@ does not provide a\nclean way to disambiguate which one is wanted; the topmost\none is always chosen.\n\nThis package provides tools for disambiguating without\nbeing forced to choose a particular transformer stack. It\nprovides a separate stack for each kind of effect; you may\nthen disambiguate by depth within each stack. For example,\nin a stack with two @StateT@ transformers, one can write\n\n@foo :: MonadStateDepth 0 m a => m a\nfoo = depthState \\@0 get@\n\nfor access to the topmost state effects, or\n\n@bar :: MonadStateDepth 1 m a => m a\nbar = depthState \\@1 get@\n\nfor access to the state from underneath the topmost\n@StateT@, no matter how deep in the stack the two\n@StateT@s are.\n\nSee the readme for more detailed motivation, usage\nexamples, and documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.constraints)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          ];
        };
      };
    }