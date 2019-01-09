{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "urlcheck"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<dons@cse.unsw.edu.au>";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/urlcheck";
      url = "";
      synopsis = "Parallel link checker";
      description = "A (SMP) parallel link checker.\nChecks the validity of embedded urls in the input files.\nUsage: urlcheck foo.html";
      buildType = "Simple";
      };
    components = {
      exes = {
        "urlcheck" = {
          depends = [ (hsPkgs.network) (hsPkgs.mtl) ] ++ (if flags.small_base
            then [
              (hsPkgs.base)
              (hsPkgs.old-time)
              (hsPkgs.containers)
              (hsPkgs.bytestring)
              ]
            else [ (hsPkgs.base) ]);
          };
        };
      };
    }