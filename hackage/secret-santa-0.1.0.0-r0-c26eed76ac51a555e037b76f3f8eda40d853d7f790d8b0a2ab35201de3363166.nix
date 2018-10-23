{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "secret-santa";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "rodrigosetti@gmail.com";
      author = "Rodrigo Setti";
      homepage = "https://github.com/rodrigosetti/secret-santa";
      url = "";
      synopsis = "Secret Santa game assigner using QR-Codes";
      description = "Secret Santa game assigner using QR-Codes\nReads a list of friends from the standard input (or a\nfile) and renders to a specified output file (or\n\"output.pdf\" if not specified) all assignments of gift\ngivers and their corresponding receivers encoded in a\nQR-Code.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "secret-santa" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.diagrams-lib)
            (hsPkgs.random)
            (hsPkgs.diagrams-cairo)
            (hsPkgs.haskell-qrencode)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }