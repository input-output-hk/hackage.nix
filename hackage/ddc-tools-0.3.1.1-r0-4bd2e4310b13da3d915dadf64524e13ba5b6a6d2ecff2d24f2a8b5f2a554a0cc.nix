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
        name = "ddc-tools";
        version = "0.3.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The Disciplined Disciple Compiler Strike Force";
      homepage = "http://disciple.ouroborus.net";
      url = "";
      synopsis = "Disciplined Disciple Compiler command line tools.";
      description = "Disciplined Disciple Compiler command line tools.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "ddc-check" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ddc-core)
          ];
        };
        "ddc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.haskeline)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.ddc-base)
            (hsPkgs.ddc-core)
            (hsPkgs.ddc-core-eval)
            (hsPkgs.ddc-core-simpl)
            (hsPkgs.ddc-core-salt)
            (hsPkgs.ddc-core-llvm)
            (hsPkgs.ddc-build)
            (hsPkgs.ddc-driver)
            (hsPkgs.ddc-code)
          ];
        };
        "ddci-core" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.haskeline)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.ddc-base)
            (hsPkgs.ddc-core)
            (hsPkgs.ddc-core-eval)
            (hsPkgs.ddc-core-simpl)
            (hsPkgs.ddc-core-salt)
            (hsPkgs.ddc-core-llvm)
            (hsPkgs.ddc-build)
            (hsPkgs.ddc-driver)
          ];
        };
      };
    };
  }