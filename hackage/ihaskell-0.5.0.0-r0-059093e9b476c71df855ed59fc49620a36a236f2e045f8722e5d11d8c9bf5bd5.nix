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
      specVersion = "1.16";
      identifier = {
        name = "ihaskell";
        version = "0.5.0.0";
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
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.classy-prelude)
          (hsPkgs.mono-traversable)
          (hsPkgs.cmdargs)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.ghc)
          (hsPkgs.ghc-parser)
          (hsPkgs.haskeline)
          (hsPkgs.here)
          (hsPkgs.hlint)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.hspec)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.HUnit)
          (hsPkgs.MissingH)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.shelly)
          (hsPkgs.split)
          (hsPkgs.stm)
          (hsPkgs.strict)
          (hsPkgs.system-argv0)
          (hsPkgs.system-filepath)
          (hsPkgs.tar)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
          (hsPkgs.uuid)
          (hsPkgs.vector)
          (hsPkgs.ipython-kernel)
        ];
      };
      exes = {
        "IHaskell" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ghc-paths)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.classy-prelude)
            (hsPkgs.mono-traversable)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.ghc)
            (hsPkgs.ihaskell)
            (hsPkgs.MissingH)
            (hsPkgs.text)
            (hsPkgs.ipython-kernel)
            (hsPkgs.unix)
          ];
        };
      };
      tests = {
        "hspec" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.classy-prelude)
            (hsPkgs.mono-traversable)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.ghc)
            (hsPkgs.ghc-parser)
            (hsPkgs.ghc-paths)
            (hsPkgs.haskeline)
            (hsPkgs.here)
            (hsPkgs.hlint)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.MissingH)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.shelly)
            (hsPkgs.split)
            (hsPkgs.stm)
            (hsPkgs.strict)
            (hsPkgs.system-argv0)
            (hsPkgs.system-filepath)
            (hsPkgs.tar)
            (hsPkgs.text)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
            (hsPkgs.utf8-string)
            (hsPkgs.uuid)
            (hsPkgs.vector)
            (hsPkgs.setenv)
            (hsPkgs.ipython-kernel)
          ];
        };
      };
    };
  }