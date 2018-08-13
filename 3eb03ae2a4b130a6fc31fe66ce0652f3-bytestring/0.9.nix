{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      split-base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "bytestring";
        version = "0.9";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Don Stewart 2005-2007,\n(c) Duncan Coutts 2006-2007,\n(c) David Roundy 2003-2005.";
      maintainer = "dons@cse.unsw.edu.au, duncan@haskell.org";
      author = "Don Stewart, Duncan Coutts";
      homepage = "http://www.cse.unsw.edu.au/~dons/fps.html";
      url = "";
      synopsis = "Fast, packed, strict and lazy byte arrays with a list interface";
      description = "";
      buildType = "Simple";
    };
    components = {
      "bytestring" = {
        depends  = if _flags.split-base
          then [
            (hsPkgs.base)
            (hsPkgs.array)
          ]
          else [ (hsPkgs.base) ];
      };
    };
  }