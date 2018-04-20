{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "base-feature-macros";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "hvr@gnu.org";
        author = "Herbert Valerio Riedel";
        homepage = "";
        url = "";
        synopsis = "Semantic CPP feature macros for base";
        description = "This provides a set of feature macros describing features of @base@ in a semantic way.\n\nSee <base-feature-macros/src/base-feature-macros.h base-feature-macros.h> for set of currently provided macros.\n\nIn order to use the CPP header provided by this package, add this package as a dependency to your @.cabal@ file, i.e.\n\n> build-depends: base-feature-macros: >= 0.1 && < 0.2\n\nwhile making sure that the version specified as lower bound defines the feature-macros your code tests for. This is particularly important as CPP will implicitly treat undefined CPP macros as having the value @0@. See also GNU CPP/CC's @-Wundef@ warning to detect such errors.\n\nThen in your code, you can include and use the @\\<base-feature-macros.h\\>@ header like so\n\n> module M where\n>\n> #include <base-feature-macros.h>\n>\n> #if !HAVE_FOLDABLE_TRAVERSABLE_IN_PRELUDE\n> import Data.Foldable (Foldable (..))\n> import Prelude       hiding (foldr, foldr1)\n> #endif\n> #if !HAVE_MONOID_IN_PRELUDE\n> import Data.Monoid hiding ((<>))\n> #endif\n\nThis package is inspired by the blogpost\n<https://github.com/quchen/articles/blob/master/haskell-cpp-compatibility.md \"Make macros mean something – readable backwards compatibility with CPP\">.";
        buildType = "Simple";
      };
      components = {
        base-feature-macros = {
          depends  = [ hsPkgs.base ];
        };
      };
    }