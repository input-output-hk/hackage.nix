{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      in-ghc-tree = false;
      test = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "haddock";
        version = "2.8.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Simon Marlow, David Waern";
      maintainer = "David Waern <david.waern@gmail.com>";
      author = "Simon Marlow, David Waern";
      homepage = "http://www.haskell.org/haddock/";
      url = "";
      synopsis = "A documentation-generation tool for Haskell libraries";
      description = "Haddock is a documentation-generation tool for Haskell\nlibraries";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.pretty)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.xhtml)
          (hsPkgs.Cabal)
          (hsPkgs.ghc)
        ] ++ pkgs.lib.optional (!flags.in-ghc-tree) (hsPkgs.ghc-paths)) ++ pkgs.lib.optional (flags.test) (hsPkgs.QuickCheck);
      };
      exes = {
        "haddock" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.pretty)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.xhtml)
            (hsPkgs.Cabal)
            (hsPkgs.ghc)
          ] ++ pkgs.lib.optional (!flags.in-ghc-tree) (hsPkgs.ghc-paths)) ++ pkgs.lib.optional (flags.test) (hsPkgs.QuickCheck);
        };
      };
    };
  }