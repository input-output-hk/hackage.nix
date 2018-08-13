{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      template-haskell = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "docopt";
        version = "0.7.0.5";
      };
      license = "MIT";
      copyright = "(c) 2013-2015 Ryan Artecona";
      maintainer = "ryanartecona@gmail.com";
      author = "Ryan Artecona";
      homepage = "https://github.com/docopt/docopt.hs";
      url = "";
      synopsis = "A command-line interface parser that will make you smile";
      description = "Docopt parses command-line interface usage text that adheres to a familiar syntax, and from it builds a command-line argument parser that will ensure your program is invoked correctly with the available options specified in the usage text. This allows the developer to write a usage text and get an argument parser for free.";
      buildType = "Simple";
    };
    components = {
      "docopt" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.containers)
        ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "6.10" && _flags.template-haskell) [
          (hsPkgs.template-haskell)
          (hsPkgs.th-lift)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.docopt)
            (hsPkgs.HUnit)
            (hsPkgs.split)
            (hsPkgs.ansi-terminal)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.template-haskell)
            (hsPkgs.th-lift)
          ];
        };
      };
    };
  }