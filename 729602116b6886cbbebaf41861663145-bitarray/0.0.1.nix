{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      splitbase = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "bitarray";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Balazs Komuves";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "http://code.haskell.org/~bkomuves/";
      url = "";
      synopsis = "Mutable and immutable bit arrays";
      description = "Mutable and immutable bit arrays.";
      buildType = "Simple";
    };
    components = {
      "bitarray" = {
        depends  = if _flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.array)
          ]
          else [ (hsPkgs.base) ];
      };
    };
  }