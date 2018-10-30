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
      specVersion = "1.10";
      identifier = {
        name = "stack-run";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "Copyright (c) 2015 Pedro Tacla Yamada";
      maintainer = "tacla.yamada@gmail.com";
      author = "Pedro Tacla Yamada";
      homepage = "https://github.com/yamadapc/stack-run";
      url = "";
      synopsis = "An equivalent to cabal run for stack.";
      description = "Finds the project root, compiles your code and runs the\nfirst or set default executable. It's a shorthand for\n@stack build && stack run executable@, much like\n@cabal run@.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "stack-run" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.MissingH)
            (hsPkgs.ansi-terminal)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.projectroot)
          ];
        };
      };
    };
  }