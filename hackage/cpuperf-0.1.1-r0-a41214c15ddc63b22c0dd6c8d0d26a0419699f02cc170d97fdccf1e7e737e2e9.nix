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
        name = "cpuperf";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Don Stewart <dons@galois.com>";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/cpuperf";
      url = "";
      synopsis = "Modify the cpu frequency on OpenBSD systems";
      description = "cpuperf toggle the cpu frequency on OpenBSD systems between 0 and 100%.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cpuperf" = {
          depends  = [
            (hsPkgs.mtl)
          ] ++ (if flags.small_base
            then [
              (hsPkgs.base)
              (hsPkgs.process)
            ]
            else [ (hsPkgs.base) ]);
        };
      };
    };
  }