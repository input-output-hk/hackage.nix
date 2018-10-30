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
      specVersion = "1.6";
      identifier = {
        name = "alex";
        version = "3.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Chis Dornan, Simon Marlow";
      maintainer = "Simon Marlow <marlowsd@gmail.com>";
      author = "Chris Dornan and Simon Marlow";
      homepage = "http://www.haskell.org/alex/";
      url = "";
      synopsis = "Alex is a tool for generating lexical analysers in Haskell";
      description = "";
      buildType = "Custom";
    };
    components = {
      exes = {
        "alex" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
          ] ++ (if flags.small_base
            then [
              (hsPkgs.base)
              (hsPkgs.array)
              (hsPkgs.containers)
              (hsPkgs.directory)
            ]
            else [ (hsPkgs.base) ]);
        };
      };
    };
  }