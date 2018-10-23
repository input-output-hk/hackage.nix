{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.16";
      identifier = {
        name = "ihaskell";
        version = "0.3.0.4";
      };
      license = "MIT";
      copyright = "";
      maintainer = "andrew.gibiansky@gmail.com";
      author = "Andrew Gibiansky";
      homepage = "http://gibiansky.github.io/IHaskell/";
      url = "";
      synopsis = "A Haskell backend kernel for the IPython project.";
      description = "IHaskell is a Haskell backend kernel for the IPython project. This allows using Haskell via\na console or notebook interface. Additional packages may be installed to provide richer data visualizations.";
      buildType = "Simple";
    };
    components = {
      "ihaskell" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.classy-prelude)
          (hsPkgs.cmdargs)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.ghc)
          (hsPkgs.ghc-parser)
          (hsPkgs.ghci-lib)
          (hsPkgs.ghc-paths)
          (hsPkgs.haskeline)
          (hsPkgs.here)
          (hsPkgs.hlint)
          (hsPkgs.hspec)
          (hsPkgs.HTTP)
          (hsPkgs.HUnit)
          (hsPkgs.ipython-kernel)
          (hsPkgs.MissingH)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.shelly)
          (hsPkgs.split)
          (hsPkgs.strict)
          (hsPkgs.system-argv0)
          (hsPkgs.system-filepath)
          (hsPkgs.tar)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          (hsPkgs.utf8-string)
        ];
      };
      exes = {
        "IHaskell" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.classy-prelude)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.ghc)
            (hsPkgs.ghc-parser)
            (hsPkgs.ghci-lib)
            (hsPkgs.ghc-paths)
            (hsPkgs.haskeline)
            (hsPkgs.here)
            (hsPkgs.hlint)
            (hsPkgs.hspec)
            (hsPkgs.HTTP)
            (hsPkgs.HUnit)
            (hsPkgs.ipython-kernel)
            (hsPkgs.MissingH)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.shelly)
            (hsPkgs.split)
            (hsPkgs.strict)
            (hsPkgs.system-argv0)
            (hsPkgs.system-filepath)
            (hsPkgs.tar)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
          ];
          build-tools = [
            (hsPkgs.buildPackages.happy)
            (hsPkgs.buildPackages.cpphs)
          ];
        };
      };
      tests = {
        "hspec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.classy-prelude)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.ghc)
            (hsPkgs.ghc-parser)
            (hsPkgs.ghci-lib)
            (hsPkgs.ghc-paths)
            (hsPkgs.haskeline)
            (hsPkgs.here)
            (hsPkgs.hlint)
            (hsPkgs.hspec)
            (hsPkgs.HTTP)
            (hsPkgs.HUnit)
            (hsPkgs.ipython-kernel)
            (hsPkgs.MissingH)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.setenv)
            (hsPkgs.shelly)
            (hsPkgs.split)
            (hsPkgs.strict)
            (hsPkgs.system-argv0)
            (hsPkgs.system-filepath)
            (hsPkgs.tar)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
          ];
        };
      };
    };
  }