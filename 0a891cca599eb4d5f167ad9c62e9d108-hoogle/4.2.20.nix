{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hoogle";
        version = "4.2.20";
      };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2004-2013";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "http://www.haskell.org/hoogle/";
      url = "";
      synopsis = "Haskell API Search";
      description = "Hoogle is a Haskell API search engine, which allows you to\nsearch many standard Haskell libraries by either function name,\nor by approximate type signature.";
      buildType = "Simple";
    };
    components = {
      "hoogle" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.safe)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.parsec)
          (hsPkgs.deepseq)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.uniplate)
          (hsPkgs.blaze-builder)
          (hsPkgs.case-insensitive)
          (hsPkgs.http-types)
          (hsPkgs.wai)
          (hsPkgs.haskell-src-exts)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
      exes = {
        "hoogle" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.safe)
            (hsPkgs.aeson)
            (hsPkgs.cmdargs)
            (hsPkgs.deepseq)
            (hsPkgs.tagsoup)
            (hsPkgs.blaze-builder)
            (hsPkgs.http-types)
            (hsPkgs.case-insensitive)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.uniplate)
            (hsPkgs.conduit)
            (hsPkgs.parsec)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.Cabal)
            (hsPkgs.haskell-src-exts)
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
        };
      };
      tests = {
        "hoogle-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hoogle)
            (hsPkgs.conduit)
            (hsPkgs.system-fileio)
            (hsPkgs.transformers)
            (hsPkgs.HUnit)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
          ];
        };
      };
    };
  }