{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { base4 = true; };
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "regex-tdfa";
        version = "1.1.4";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007, Christopher Kuklewicz";
      maintainer = "TextRegexLazy@personal.mightyreason.com";
      author = "Christopher Kuklewicz";
      homepage = "http://sourceforge.net/projects/lazy-regex";
      url = "http://darcs.haskell.org/packages/regex-unstable/regex-tdfa/";
      synopsis = "Replaces/Enhances Text.Regex";
      description = "A new all Haskell \"tagged\" DFA regex engine, inspired by libtre";
      buildType = "Simple";
    };
    components = {
      "regex-tdfa" = {
        depends  = [
          (hsPkgs.regex-base)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.bytestring)
        ] ++ (if flags.base4
          then [
            (hsPkgs.base)
            (hsPkgs.ghc-prim)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }