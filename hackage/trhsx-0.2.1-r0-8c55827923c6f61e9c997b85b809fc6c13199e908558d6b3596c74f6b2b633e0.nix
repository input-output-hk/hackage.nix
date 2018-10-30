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
      specVersion = "0";
      identifier = {
        name = "trhsx";
        version = "0.2.1";
      };
      license = "BSD-4-Clause";
      copyright = "";
      maintainer = "Niklas Broberg <nibro@cs.chalmers.se>";
      author = "Niklas Broberg";
      homepage = "http://www.cs.chalmers.se/~d00nibro/harp/";
      url = "";
      synopsis = "trhsx is the preprocessor for Harp and HSP";
      description = "trhsx, the desugaring pre-processor executable for HaRP and HSP.\nRequires haskell-src-exts to build.\n\nIt is meant to be used as a preprocessor for GHC, with the command\n'ghc -F -pgmF trhsx infile'. It can also be used as a separate tool,\nin which case the command-line syntax is:\n\n\$ trhsx \\<infile\\>   Desugars \\<infile\\> and gives the result on standard output.\n\n\$ trhsx \\<infile\\> \\<outfile\\>  Desugars \\<infile\\> and writes the result to \\<outfile\\>.\n\nThe pre-processed files rely on pattern guards and will therefore work with GHC only.\n\nFor details on usage, please see the website.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "trhsx" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell-src-exts)
          ];
        };
      };
    };
  }