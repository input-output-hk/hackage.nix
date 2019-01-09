{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "highWaterMark"; version = "0.1.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "None";
      author = "Bernie Pope <bjpop@csse.unimelb.edu.au>";
      homepage = "http://www.cs.mu.oz.au/~bjpop/code.html";
      url = "";
      synopsis = "Memory usage statistics";
      description = "A library for determining the amount of memory allocated a\nt any point by a GHC program. Note - it only counts memory\nunder the GHC storage manager, it does not count malloc, mmap'd stuff etc.\n\nObsolete.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "highWaterMark" = { depends = [ (hsPkgs.base) (hsPkgs.ghc) ]; };
        };
      };
    }