{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { embedded = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "limp-cbc";
        version = "0.3.2.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "amos.robinson@gmail.com";
      author = "Amos Robinson";
      homepage = "https://github.com/amosr/limp-cbc";
      url = "";
      synopsis = "bindings for integer linear programming solver Coin/CBC";
      description = "Bindings to external solver, CBC.\nCBC is somewhat faster than GLPK, and also has a more permissive licence.\nRelies on coin/cbc version 2.8.6.\nThis package has a few caveats: invalid programs can cause segfaults, and the library-based solver is slower than the command-line based one.\nSee https://github.com/amosr/limp-cbc for details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.limp)
        ];
        libs = [ (pkgs."stdc++") ];
        pkgconfig = pkgs.lib.optional (!flags.embedded) (pkgconfPkgs.cbc);
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
      tests = {
        "examples" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.limp)
            (hsPkgs.limp-cbc)
          ];
        };
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.limp)
            (hsPkgs.limp-cbc)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }