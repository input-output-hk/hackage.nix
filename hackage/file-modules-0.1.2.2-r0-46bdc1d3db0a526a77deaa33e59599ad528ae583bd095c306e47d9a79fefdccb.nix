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
        name = "file-modules";
        version = "0.1.2.2";
      };
      license = "MIT";
      copyright = "Copyright (c) Pedro Tacla Yamada 2015";
      maintainer = "tacla.yamada@gmail.com";
      author = "Pedro Tacla Yamada";
      homepage = "https://github.com/yamadapc/stack-run-auto";
      url = "";
      synopsis = "Takes a Haskell source-code file and outputs its modules.";
      description = "Uses @haskell-src-exts@ to parse module imports and follows links\n. to local modules in order to build a list of module dependencies.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.MissingH)
          (hsPkgs.directory)
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.haskell-src-exts)
        ];
      };
      exes = {
        "file-modules" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.MissingH)
            (hsPkgs.directory)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.haskell-src-exts)
          ];
        };
      };
    };
  }