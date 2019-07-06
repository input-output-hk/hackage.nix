{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "effect-stack"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@dmwit.com";
      author = "Daniel Wagner";
      homepage = "";
      url = "";
      synopsis = "Reducing the pain of transformer stacks with duplicated effects";
      description = "When using monad transformer stacks, it is common to want\nto mix effects from various layers of the stack within a\nsingle block of code. The @lift@ operation can be used to\nconvert an action that uses effects at some deep layer of\nthe stack into one that works in the full stack. It\nquickly becomes tedious to include exactly the right\nnumber of calls to @lift@ each time they are needed; and\nmakes the code more fragile when the transformer stack is\nchanged (e.g. to include a new effect).\n\nThe @mtl@ package provides a convenient way to point to a\nparticular layer of the stack, under the assumption that\nthere is exactly one \"kind\" of each interesting effect.\n(For example, one can only have one type of state, one\ntype of environment to read from, and so forth.) However,\nif one wishes to have to copies of a single kind of\neffect, there is no convenient, generic way to choose\nanything other than the one that appears topmost in the\nstack. For example, for a stack that contains two\n@StateT@s in it, one can write code that accesses the\noutermost state using a type like\n\n@MonadState outer m => m ()@\n\nbut there is no polymorphic way to reach the inner\n@StateT@'s state. One is back to writing fragile code that\ndepends on exactly which transformer stack was chosen.\n\nThis package provides a way to make such choices\ngenerically: it introduces a separate stack for each kind\nof effect, and provides an operation for popping one layer\nof a given effect's stack. Continuing the @StateT@\nexample, one could write\n\n@MonadState outer m => m ()@\n\nas before for the outermost state, or\n\n@(StateStack m, MonadState inner (PopState m)) => m ()@\n\nto access the state from underneath the outermost\n@StateT@, no matter how deep it is.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.transformers) (hsPkgs.mtl) ];
        };
      };
    }