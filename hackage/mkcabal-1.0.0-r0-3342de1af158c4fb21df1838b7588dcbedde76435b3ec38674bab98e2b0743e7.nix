{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "mkcabal";
        version = "1.0.0";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) Don Stewart, 2005-2008, 2010";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/mkcabal";
      url = "";
      synopsis = "Generate cabal files for a Haskell project";
      description = "This project was a tool to generate cabal files for\na project. It has since been merged into 'cabal init'.\n\n*Please use 'cabal init' instead\n\nMore details on cabal init here:\n<http://byorgey.wordpress.com/2010/04/15/cabal-init/>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mkcabal" = {
          depends  = [
            (hsPkgs.mtl)
            (hsPkgs.pcre-light)
            (hsPkgs.readline)
            (hsPkgs.extensible-exceptions)
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