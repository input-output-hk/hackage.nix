{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      haste-inst = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "aivika-transformers";
        version = "2.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2014. David Sorokin <david.sorokin@gmail.com>";
      maintainer = "David Sorokin <david.sorokin@gmail.com>";
      author = "David Sorokin";
      homepage = "http://github.com/dsorokin/aivika";
      url = "";
      synopsis = "Transformers for the Aivika simulation library";
      description = "The package adds the monad and other computation transformers to\nthe Aivika [1] library. This is a generalization of the simulation library.\n\n\\[1] <http://hackage.haskell.org/package/aivika>\n";
      buildType = "Simple";
    };
    components = {
      "aivika-transformers" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.random)
          (hsPkgs.aivika)
        ] ++ pkgs.lib.optional (!_flags.haste-inst) (hsPkgs.vector);
      };
    };
  }