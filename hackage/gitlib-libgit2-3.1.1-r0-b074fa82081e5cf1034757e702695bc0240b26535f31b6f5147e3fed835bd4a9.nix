{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "gitlib-libgit2";
        version = "3.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "johnw@newartisans.com";
      author = "John Wiegley";
      homepage = "";
      url = "";
      synopsis = "Libgit2 backend for gitlib";
      description = "Libgit2 (<http://libgit2.github.com>) backend for @gitlib@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.gitlib)
          (hsPkgs.hlibgit2)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-combinators)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.fast-logger)
          (hsPkgs.filepath)
          (hsPkgs.lifted-async)
          (hsPkgs.lifted-base)
          (hsPkgs.mmorph)
          (hsPkgs.monad-control)
          (hsPkgs.monad-loops)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.stm)
          (hsPkgs.stm-conduit)
          (hsPkgs.tagged)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.text-icu)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.10") (hsPkgs.missing-foreign);
      };
      tests = {
        "smoke" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gitlib)
            (hsPkgs.gitlib-test)
            (hsPkgs.gitlib-libgit2)
            (hsPkgs.HUnit)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.exceptions)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }