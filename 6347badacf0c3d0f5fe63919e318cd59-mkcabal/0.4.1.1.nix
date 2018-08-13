{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      small_base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "mkcabal";
        version = "0.4.1.1";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) Don Stewart, 2005-2008";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/mkcabal";
      url = "";
      synopsis = "Generate cabal files for a Haskell project";
      description = "Generate cabal files for a Haskell project";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mkcabal" = {
          depends  = [
            (hsPkgs.mtl)
            (hsPkgs.pcre-light)
            (hsPkgs.readline)
          ] ++ (if _flags.small_base
            then [
              (hsPkgs.base)
              (hsPkgs.pretty)
              (hsPkgs.old-locale)
              (hsPkgs.old-time)
              (hsPkgs.directory)
            ]
            else [ (hsPkgs.base) ]);
        };
      };
    };
  }