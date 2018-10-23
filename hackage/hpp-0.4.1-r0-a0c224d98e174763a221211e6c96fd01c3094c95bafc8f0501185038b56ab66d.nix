{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hpp";
        version = "0.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "(C) 2015-2016 Anthony Cowley";
      maintainer = "acowley@gmail.com";
      author = "Anthony Cowley";
      homepage = "https://github.com/acowley/hpp";
      url = "";
      synopsis = "A Haskell pre-processor";
      description = "See the README for usage examples";
      buildType = "Simple";
    };
    components = {
      "hpp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.time)
          (hsPkgs.filepath)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-trie)
          (hsPkgs.ghc-prim)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8") (hsPkgs.semigroups);
      };
      exes = {
        "hpp" = {
          depends  = [
            (hsPkgs.hpp)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.time)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }