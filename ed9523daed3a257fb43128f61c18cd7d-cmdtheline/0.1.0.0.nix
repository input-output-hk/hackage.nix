{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "cmdtheline";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Eli Frey <eli.lee.frey gmail com>";
      author = "Eli Frey";
      homepage = "http://github.com/eli-frey/cmdtheline";
      url = "";
      synopsis = "Declaritive command-line option parsing and documentation library.";
      description = "CmdTheLine aims to remove tedium from the definition of command-line\nprograms, producing usage, help and man pages with little effort.\n\nThe inspiration was found in Daniel Bunzli's\n<http://erratique.ch/software/cmdliner> library.\n\nCmdTheLine uses applicative functors to provide a declarative, compositional\nmechanism for defining command-line programs by lifting regular Haskell\nfunctions over argument parsers.\n\nSuggestions, comments, and bug reports are appreciated. Please see the\nbug and issue tracker at <http://github.com/eli-frey/cmdtheline>.";
      buildType = "Simple";
    };
    components = {
      "cmdtheline" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.data-default)
        ];
      };
    };
  }