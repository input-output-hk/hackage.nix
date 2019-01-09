{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "ghc-man-completion"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "headprogrammingczar@gmail.com";
      author = "Joe Quinn";
      homepage = "";
      url = "";
      synopsis = "Generate a bash completion from the GHC manpage";
      description = "Parses the output of GHC's man page and generates a bash completion file.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ghc-man-completion" = {
          depends = [ (hsPkgs.base) (hsPkgs.parsec) (hsPkgs.process) ];
          };
        };
      };
    }