{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "monad-var";
          version = "0.2.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "effectfully@gmail.com";
        author = "effectfully";
        homepage = "https://github.com/effectfully/monad-var#readme";
        url = "";
        synopsis = "Generic operations over variables";
        description = "The aim of this library is to provide a unified set of operations (@new@, @read@, @write@, @swap@, various strict @mutate*@ functions and their derivatives (like mutate-and-return-the-old-value) and a certain interface for @MVar@-like things) over all common variable types: @IORef@, @STRef s@, @MVar@, @TVar@, @TMVar@.\nWhen possible type classes are generalized to be over abstract containers rather than variables: e.g. it'd make sense to implement @MonadRead TChan@ and @MonadMutate_ Vector@ instances, but no such instances are provided right now.\nThere are also some lenses to be described in an upcoming blog post.";
        buildType = "Simple";
      };
      components = {
        monad-var = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.stm
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.transformers;
        };
      };
    }