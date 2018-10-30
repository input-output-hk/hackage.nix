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
        version = "0.3.12";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/kazu-yamamoto/logger";
      url = "";
      synopsis = "A class of monads which can log messages.";
      description = "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/monad-logger>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          (hsPkgs.text)
          (hsPkgs.stm)
          (hsPkgs.stm-chans)
          (hsPkgs.lifted-base)
          (hsPkgs.resourcet)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.fast-logger)
          (hsPkgs.transformers-base)
          (hsPkgs.monad-control)
          (hsPkgs.monad-loops)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.exceptions)
        ] ++ pkgs.lib.optional (flags.template_haskell) (hsPkgs.template-haskell);
      };
    };
  }