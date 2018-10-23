{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "cabal2doap";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009, Greg Heartsfield";
      maintainer = "Greg Heartsfield <scsibug@imap.cc>";
      author = "Greg Heartsfield <scsibug@imap.cc>";
      homepage = "http://gregheartsfield.com/cabal2doap/";
      url = "";
      synopsis = "Cabal to Description-of-a-Project (DOAP)";
      description = "A converter from Cabal build description files, to\nDescription-of-a-Project (DOAP) RDF files, giving visibility on\nthe semantic web to cabalized Haskell projects.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cabal2doap" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hxt)
            (hsPkgs.Cabal)
            (hsPkgs.parsec)
            (hsPkgs.hsemail)
            (hsPkgs.process)
          ];
        };
      };
    };
  }