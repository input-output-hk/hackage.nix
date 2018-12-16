{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { devel = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "regex-tdfa";
        version = "1.2.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007, Christopher Kuklewicz";
      maintainer = "Artyom <yom@artyom.me>, Christopher Kuklewicz <TextRegexLazy@personal.mightyreason.com>";
      author = "Christopher Kuklewicz";
      homepage = "https://github.com/ChrisKuklewicz/regex-tdfa";
      url = "";
      synopsis = "Replaces/Enhances Text.Regex";
      description = "A new all Haskell \"tagged\" DFA regex engine, inspired by libtre";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.ghc-prim)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.regex-base)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups);
      };
    };
  }