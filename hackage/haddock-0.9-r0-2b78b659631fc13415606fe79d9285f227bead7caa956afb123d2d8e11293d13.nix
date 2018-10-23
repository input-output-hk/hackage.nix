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
        name = "haddock";
        version = "0.9";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Simon Marlow";
      maintainer = "Simon Marlow <simonmar@microsoft.com>";
      author = "Simon Marlow";
      homepage = "http://www.haskell.org/haddock/";
      url = "";
      synopsis = "Haddock is a documentation-generation tool for Haskell libraries";
      description = "";
      buildType = "Custom";
    };
    components = {
      exes = {
        "haddock" = {
          depends  = [
            (hsPkgs.haskell98)
          ] ++ (if flags.small_base
            then [
              (hsPkgs.base)
              (hsPkgs.array)
              (hsPkgs.containers)
              (hsPkgs.directory)
              (hsPkgs.pretty)
              (hsPkgs.process)
            ]
            else [ (hsPkgs.base) ]);
        };
      };
    };
  }