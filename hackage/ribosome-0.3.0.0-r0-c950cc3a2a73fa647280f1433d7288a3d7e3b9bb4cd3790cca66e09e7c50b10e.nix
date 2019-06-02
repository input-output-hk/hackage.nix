{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "ribosome"; version = "0.3.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "2019 Torsten Schmits";
      maintainer = "tek@tryp.io";
      author = "Torsten Schmits";
      homepage = "https://github.com/tek/ribosome-hs#readme";
      url = "";
      synopsis = "api extensions for nvim-hs";
      description = "Please see the README on GitHub at <https://github.com/tek/ribosome-hs>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.MissingH)
          (hsPkgs.aeson)
          (hsPkgs.ansi-terminal)
          (hsPkgs.base-noprelude)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.cereal-conduit)
          (hsPkgs.chiasma)
          (hsPkgs.composition)
          (hsPkgs.composition-extra)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.containers)
          (hsPkgs.cornea)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.either)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.free)
          (hsPkgs.hslogger)
          (hsPkgs.lens)
          (hsPkgs.lifted-async)
          (hsPkgs.lifted-base)
          (hsPkgs.messagepack)
          (hsPkgs.monad-control)
          (hsPkgs.monad-loops)
          (hsPkgs.mtl)
          (hsPkgs.nvim-hs)
          (hsPkgs.path)
          (hsPkgs.path-io)
          (hsPkgs.pretty-terminal)
          (hsPkgs.prettyprinter)
          (hsPkgs.prettyprinter-ansi-terminal)
          (hsPkgs.process)
          (hsPkgs.relude)
          (hsPkgs.resourcet)
          (hsPkgs.safe)
          (hsPkgs.split)
          (hsPkgs.stm)
          (hsPkgs.stm-chans)
          (hsPkgs.stm-conduit)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.th-abstraction)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.typed-process)
          (hsPkgs.unix)
          (hsPkgs.unliftio)
          (hsPkgs.unliftio-core)
          (hsPkgs.utf8-string)
          ];
        };
      };
    }