{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      build-tests = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.9";
      identifier = {
        name = "module-management";
        version = "0.20.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "David Fox <dsf@seereason.com>";
      author = "David Fox";
      homepage = "https://github.com/seereason/module-management";
      url = "";
      synopsis = "Clean up module imports, split and merge modules";
      description = "Clean up module imports, split and merge modules.";
      buildType = "Simple";
    };
    components = {
      "module-management" = {
        depends  = [
          (hsPkgs.applicative-extras)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.HUnit)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.pureMD5)
          (hsPkgs.set-extra)
          (hsPkgs.syb)
          (hsPkgs.system-fileio)
          (hsPkgs.temporary)
        ];
      };
      exes = {
        "hmm" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.cmdargs)
            (hsPkgs.directory)
            (hsPkgs.haskeline)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.lens)
            (hsPkgs.module-management)
            (hsPkgs.monad-control)
            (hsPkgs.mtl)
            (hsPkgs.regex-compat)
            (hsPkgs.set-extra)
            (hsPkgs.template-haskell)
            (hsPkgs.transformers-base)
          ];
        };
      };
      tests = {
        "module-management-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.HUnit)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.module-management)
            (hsPkgs.process)
          ];
        };
      };
    };
  }