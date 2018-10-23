{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "file-modules";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "Copyright (c) Pedro Tacla Yamada 2015";
      maintainer = "tacla.yamada@gmail.com";
      author = "Pedro Tacla Yamada";
      homepage = "https://github.com/yamadapc/stack-run-auto";
      url = "";
      synopsis = "Takes a Haskell source-code file and outputs the modules it\n. imports. Follows links to local modules as well.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "file-modules" = {
        depends  = [
          (hsPkgs.MissingH)
          (hsPkgs.directory)
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.stm)
          (hsPkgs.stm-containers)
        ];
      };
      exes = {
        "file-modules" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.MissingH)
            (hsPkgs.directory)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.stm)
            (hsPkgs.stm-containers)
          ];
        };
      };
    };
  }