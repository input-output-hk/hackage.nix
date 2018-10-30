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
      specVersion = "1.10";
      identifier = {
        name = "cudd";
        version = "0.1.0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Adam Walker";
      maintainer = "adamwalker10@gmail.com";
      author = "Adam Walker";
      homepage = "https://github.com/adamwalker/haskell_cudd";
      url = "";
      synopsis = "Bindings to the CUDD binary decision diagrams library";
      description = "Bindings to version 3.0.0 of the CUDD binary decision diagrams library.\n\n<http://vlsi.colorado.edu/~fabio/CUDD/>\n\n/Installation/\n\nEither install CUDD 3.0.0 using your system's package manager or download and install CUDD from here: <http://vlsi.colorado.edu/~fabio/>.\n\nThen:\n\n\"cabal install cudd\"\n\n/Usage/\n\nThis package provides two interfaces to the CUDD library:\n\n* A purely functional one in \"Cudd.Cudd\" that automatically dereferences BDDs during garbage collection.\n\n* An ST Monad based one in \"Cudd.Imperative\" that gives you precise control over the ordering of BDD operations and when BDDs are dereferenced. Use this one if you want your code to perform well.\n\nAlso, for a higher level interface in the style of the <https://hackage.haskell.org/package/ersatz ersatz> SAT encoder, see <https://github.com/jwaldmann/cudd-ersatz/>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.array)
          (hsPkgs.transformers)
        ];
        libs = [
          (pkgs."cudd")
          (pkgs."m")
        ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }