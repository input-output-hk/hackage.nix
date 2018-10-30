{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "mkcabal";
        version = "0.4";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) Don Stewart, 2005-2008";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/mkcabal";
      url = "";
      synopsis = "Generate cabal files for a Haskell project";
      description = "Generate cabal files for a Haskell project";
      buildType = "Custom";
    };
    components = {
      exes = {
        "mkcabal" = {
          depends  = [
            (hsPkgs.mtl)
            (hsPkgs.pcre-light)
            (hsPkgs.readline)
          ] ++ (if flags.small_base
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