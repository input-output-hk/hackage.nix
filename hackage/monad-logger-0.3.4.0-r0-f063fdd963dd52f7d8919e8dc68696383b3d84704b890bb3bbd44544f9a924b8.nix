{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      template_haskell = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "monad-logger";
        version = "0.3.4.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/kazu-yamamoto/logger";
      url = "";
      synopsis = "A class of monads which can log messages.";
      description = "This package uses template-haskell for determining source code locations of messages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.stm)
          (hsPkgs.stm-chans)
          (hsPkgs.lifted-base)
          (hsPkgs.resourcet)
          (hsPkgs.conduit)
          (hsPkgs.fast-logger)
          (hsPkgs.transformers-base)
          (hsPkgs.monad-control)
          (hsPkgs.monad-loops)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.blaze-builder)
        ] ++ pkgs.lib.optional (flags.template_haskell) (hsPkgs.template-haskell);
      };
    };
  }