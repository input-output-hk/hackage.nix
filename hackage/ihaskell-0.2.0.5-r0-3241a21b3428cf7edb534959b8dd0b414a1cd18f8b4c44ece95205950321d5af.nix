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
      specVersion = "1.8";
      identifier = {
        name = "ihaskell";
        version = "0.2.0.5";
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.cmdargs)
          (hsPkgs.tar)
          (hsPkgs.ghc-parser)
          (hsPkgs.unix)
          (hsPkgs.hspec)
          (hsPkgs.zeromq3-haskell)
          (hsPkgs.aeson)
          (hsPkgs.MissingH)
          (hsPkgs.classy-prelude)
          (hsPkgs.bytestring)
          (hsPkgs.uuid)
          (hsPkgs.containers)
          (hsPkgs.ghc)
          (hsPkgs.ghc-paths)
          (hsPkgs.random)
          (hsPkgs.split)
          (hsPkgs.utf8-string)
          (hsPkgs.strict)
          (hsPkgs.shelly)
          (hsPkgs.system-argv0)
          (hsPkgs.directory)
          (hsPkgs.here)
          (hsPkgs.system-filepath)
          (hsPkgs.cereal)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
        ];
      };
      exes = {
        "IHaskell" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.tar)
            (hsPkgs.ghc-parser)
            (hsPkgs.unix)
            (hsPkgs.hspec)
            (hsPkgs.zeromq3-haskell)
            (hsPkgs.aeson)
            (hsPkgs.MissingH)
            (hsPkgs.classy-prelude)
            (hsPkgs.bytestring)
            (hsPkgs.uuid)
            (hsPkgs.containers)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.random)
            (hsPkgs.split)
            (hsPkgs.utf8-string)
            (hsPkgs.strict)
            (hsPkgs.shelly)
            (hsPkgs.system-argv0)
            (hsPkgs.directory)
            (hsPkgs.here)
            (hsPkgs.system-filepath)
            (hsPkgs.cereal)
            (hsPkgs.text)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
          ];
          build-tools = [
            (hsPkgs.buildPackages.happy)
            (hsPkgs.buildPackages.cpphs)
          ];
        };
      };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.tar)
            (hsPkgs.ghc-parser)
            (hsPkgs.unix)
            (hsPkgs.hspec)
            (hsPkgs.zeromq3-haskell)
            (hsPkgs.aeson)
            (hsPkgs.MissingH)
            (hsPkgs.classy-prelude)
            (hsPkgs.bytestring)
            (hsPkgs.uuid)
            (hsPkgs.containers)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.random)
            (hsPkgs.split)
            (hsPkgs.utf8-string)
            (hsPkgs.strict)
            (hsPkgs.shelly)
            (hsPkgs.system-argv0)
            (hsPkgs.directory)
            (hsPkgs.here)
            (hsPkgs.system-filepath)
            (hsPkgs.cereal)
            (hsPkgs.text)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }