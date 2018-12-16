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
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "haddock";
        version = "2.4.0";
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
      "library" = {};
      exes = {
        "haddock" = {
          depends = ([
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.ghc)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.pretty)
            (hsPkgs.containers)
            (hsPkgs.array)
          ] ++ pkgs.lib.optional (!flags.in-ghc-tree) (hsPkgs.ghc-paths)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.9") (hsPkgs.Cabal);
        };
      };
    };
  }