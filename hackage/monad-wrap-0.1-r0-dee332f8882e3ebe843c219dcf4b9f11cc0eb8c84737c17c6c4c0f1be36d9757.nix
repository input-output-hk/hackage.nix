{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "monad-wrap"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "http://www.scs.stanford.edu/~dm/addr/";
      author = "David Mazieres";
      homepage = "";
      url = "";
      synopsis = "Wrap functions such as catch around different monads";
      description = "This package allows you to invoke a function on one monadic\ntype passing it an argument of a different monadic type.  The\ncanonical example is using a function such as @'finally'@ or\n@'bracket'@ to ensure cleanup is run regardless of any\nexceptions thrown by a computation such as @x ::  'ReaderT'\nMyConfig 'IO' b@.  If @x@ uses the 'ReaderT' function 'ask',\nit cannot be re-written to run in the 'IO' monad, and hence\ncannot be executed with a construction like @'lift' (x\n``finally`` cleanup)@.  Instead, you must use the 'wrap'\nmethod, provided by module \"Control.Monad.Wrap\" in this\npackage.\n\nThis package contains several other modules:\n\"Control.Monad.WrapIO\" wraps an IO action through multiple\nmonad transformers.  \"Control.Monad.WrapBase\" generalizes the\nconcept to other base monads besides IO.\n\"Control.Monad.MultiWrap\" implements 'mwrap', a method that\nbehaves like 'wrap' but allows wrapping through multiple\nnested layers of monad transformer.  The module\n\"Control.Monad.MultiLift\" provides 'mlift', a version of\n'lift' that similarly lifts through multiple nested monad\ntransformers.\n\nSince this library was first released, an alternate approach\nwas introduced by the @monad-control@ package.\n@monad-control@ is now the standard.  However, this package,\n@monad-wrap@, stands as an example of accomplishing similar\ngoals with fewer language extensions and less complexity.  In\nparticular, @monad-wrap@ does not use @RankNTypes@ or\n@TypeFamilies@, both required by @monad-control@.  Moreover,\n@monad-wrap@ is much smaller--no 'MonadWrap' method requires\nmore than one line of code.  Both @monad-wrap@ and\n@monad-control@ require @UndecidableInstances@, but\n\"Control.Monad.Wrap\" itself does not require that extension,\nonly the other modules.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }