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
        name = "DrIFT-cabalized";
        version = "2.2.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<gwern0@gmail.com>";
      author = "Noel Winstanley, John Meacham <john@repetae.net>";
      homepage = "http://repetae.net/computer/haskell/DrIFT/";
      url = "";
      synopsis = "Program to derive type class instances";
      description = "DrIFT is a type sensitive preprocessor for Haskell. It extracts type declarations\nand directives from modules. The directives cause rules to be fired on the parsed\ntype declarations, generating new code which is then appended to the bottom of the input\nfile. The rules are expressed as Haskell code, and it is intended that the user can add new\nrules as required.\n\nDrIFT automates instance derivation for classes that aren't supported by the standard compilers.\nIn addition, instances can be produced in seperate modules to that containing the type declaration.\nThis allows instances to be derived for a type after the original module has been compiled.\nAs a bonus, simple utility functions can also be produced from a type.\n\nThis package was cabalized by gwern <gwern0@gmail.com>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "DrIFT-cabalized" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.old-time)
            (hsPkgs.random)
          ];
        };
        "DrIFT-cabalized-ghc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
          ];
        };
      };
    };
  }