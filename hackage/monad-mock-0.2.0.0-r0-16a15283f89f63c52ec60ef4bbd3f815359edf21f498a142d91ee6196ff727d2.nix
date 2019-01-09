{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "monad-mock"; version = "0.2.0.0"; };
      license = "ISC";
      copyright = "2017 CJ Affiliate by Conversant";
      maintainer = "Alexis King <lexi.lambda@gmail.com>";
      author = "Alexis King <lexi.lambda@gmail.com>";
      homepage = "https://github.com/cjdev/monad-mock#readme";
      url = "";
      synopsis = "A monad transformer for mocking mtl-style typeclasses";
      description = "This package provides a monad transformer that helps create “mocks” of\n@mtl@-style typeclasses, intended for use in unit tests. A mock can be\nexecuted by providing a sequence of expected monadic calls and their results,\nand the mock will verify that the computation conforms to the expectation.\n\nFor more information, see the module documentation for \"Control.Monad.Mock\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.constraints)
          (hsPkgs.exceptions)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.th-orphans)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers-base)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs.transformers);
        };
      tests = {
        "monad-stub-test-suite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.monad-mock)
            (hsPkgs.mtl)
            ];
          };
        };
      };
    }