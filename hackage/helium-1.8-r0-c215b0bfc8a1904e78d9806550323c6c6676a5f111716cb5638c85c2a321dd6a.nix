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
      specVersion = "1.10.1.0";
      identifier = {
        name = "helium";
        version = "1.8";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) 2014";
      maintainer = "helium@cs.uu.nl";
      author = "Bastiaan Heeren, Jurriaan Hage";
      homepage = "http://www.cs.uu.nl/wiki/bin/view/Helium/WebHome";
      url = "";
      synopsis = "The Helium Compiler.";
      description = "Helium is a compiler for a subset of Haskell that aims at delivering high\nquality type error messages particularly for beginner programmers. It also\nincludes facilities for specializing type error diagnosis for embedded domain\nspecific languages. The compiler supports Haskell 98, but without the ability\nto define new type classes and instances.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.network)
          (hsPkgs.process)
          (hsPkgs.transformers)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.wl-pprint)
          (hsPkgs.Top)
          (hsPkgs.lvmlib)
        ];
      };
      exes = {
        "helium" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.network)
            (hsPkgs.process)
            (hsPkgs.transformers)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.wl-pprint)
            (hsPkgs.Top)
            (hsPkgs.lvmlib)
          ];
        };
        "texthint" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.filepath)
            (hsPkgs.parsec)
            (hsPkgs.directory)
            (hsPkgs.process)
          ];
        };
        "runhelium" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.parsec)
            (hsPkgs.process)
          ];
        };
      };
    };
  }