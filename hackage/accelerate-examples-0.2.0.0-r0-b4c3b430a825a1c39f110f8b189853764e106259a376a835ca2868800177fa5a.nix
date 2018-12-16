{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      cuda = true;
      io = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "accelerate-examples";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      author = "The Accelerate Team";
      homepage = "";
      url = "";
      synopsis = "Examples using the Accelerate library";
      description = "Examples using the Accelerate library";
      buildType = "Simple";
    };
    components = {
      exes = {
        "accelerate-examples" = {
          depends = [
            (hsPkgs.accelerate)
            (hsPkgs.array)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-lexing)
            (hsPkgs.cmdargs)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.mwc-random)
            (hsPkgs.pgm)
            (hsPkgs.pretty)
            (hsPkgs.vector)
            (hsPkgs.vector-algorithms)
          ];
          libs = [ (pkgs."stdc++") ];
        };
      };
    };
  }