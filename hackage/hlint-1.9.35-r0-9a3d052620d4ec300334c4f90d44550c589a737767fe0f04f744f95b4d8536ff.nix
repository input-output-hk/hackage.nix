{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      threaded = true;
      gpl = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hlint";
        version = "1.9.35";
      };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2006-2016";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "https://github.com/ndmitchell/hlint#readme";
      url = "";
      synopsis = "Source code suggestions";
      description = "HLint gives suggestions on how to improve your source code.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.cpphs)
          (hsPkgs.cmdargs)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.uniplate)
          (hsPkgs.ansi-terminal)
          (hsPkgs.extra)
          (hsPkgs.refact)
        ] ++ pkgs.lib.optional (flags.gpl) (hsPkgs.hscolour);
      };
      exes = {
        "hlint" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
      };
    };
  }