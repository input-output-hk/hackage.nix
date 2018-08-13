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
      specVersion = "1.6";
      identifier = {
        name = "hoogle";
        version = "4.2.15";
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
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.safe)
          (hsPkgs.binary)
          (hsPkgs.parsec)
          (hsPkgs.transformers)
          (hsPkgs.uniplate)
          (hsPkgs.haskell-src-exts)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
      exes = {
        "hoogle" = {
          depends  = [
            (hsPkgs.time)
            (hsPkgs.old-time)
            (hsPkgs.old-locale)
            (hsPkgs.cmdargs)
            (hsPkgs.tagsoup)
            (hsPkgs.blaze-builder)
            (hsPkgs.http-types)
            (hsPkgs.case-insensitive)
            (hsPkgs.conduit)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.Cabal)
          ];
        };
      };
    };
  }