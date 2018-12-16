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
      specVersion = "1.2.3";
      identifier = {
        name = "pugs-DrIFT";
        version = "2.2.3.20120203";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Audrey Tang <audreyt@audreyt.org>";
      author = "Noel Winstanley";
      homepage = "http://pugscode.org/";
      url = "";
      synopsis = "DrIFT with pugs-specific rules.";
      description = "DrIFT is a type sensitive preprocessor for Haskell. It extracts type declarations\nand directives from modules. The directives cause rules to be fired on the parsed\ntype declarations, generating new code which is then appended to the bottom of the input\nfile. The rules are expressed as Haskell code, and it is intended that the user can add new\nrules as required.\nDrIFT automates instance derivation for classes that aren't supported by the standard compilers.\nIn addition, instances can be produced in seperate modules to that containing the type declaration.\nThis allows instances to be derived for a type after the original module has been compiled.\nAs a bonus, simple utility functions can also be produced from a type.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.old-time)
          (hsPkgs.random)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
          (hsPkgs.pretty)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.HsSyck)
        ];
      };
      exes = {
        "pugs-DrIFT" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.old-time)
            (hsPkgs.random)
            (hsPkgs.bytestring)
            (hsPkgs.utf8-string)
            (hsPkgs.pretty)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.stm)
            (hsPkgs.HsSyck)
          ];
        };
      };
    };
  }