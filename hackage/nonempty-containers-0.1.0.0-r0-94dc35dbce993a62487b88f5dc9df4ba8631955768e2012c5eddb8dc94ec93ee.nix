{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = {
        name = "nonempty-containers";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2018";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/nonempty-containers#readme";
      url = "";
      synopsis = "Non-empty variants of containers data types, with full API";
      description = "Efficient and optimized non-empty versions of types from /containers/.\nInspired by /non-empty-containers/ library, except attempting a more\nfaithful port (with under-the-hood optimizations) of the full /containers/\nAPI. Also contains a convenient typeclass abstraction for converting\nbetwewen non-empty and possibly-empty variants. See README.md for more\ninformation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.comonad)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.semigroupoids)
          (hsPkgs.these)
        ];
      };
      tests = {
        "nonempty-containers-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.comonad)
            (hsPkgs.containers)
            (hsPkgs.hedgehog)
            (hsPkgs.hedgehog-fn)
            (hsPkgs.nonempty-containers)
            (hsPkgs.semigroupoids)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hedgehog)
            (hsPkgs.text)
            (hsPkgs.these)
          ];
        };
      };
    };
  }