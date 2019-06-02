{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "ribosome-root"; version = "0.3.0.0"; };
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
      tests = {
        "ribosome-unit" = {
          depends = [
            (hsPkgs.HTF)
            (hsPkgs.MissingH)
            (hsPkgs.aeson)
            (hsPkgs.ansi-terminal)
            (hsPkgs.base-noprelude)
            (hsPkgs.bytestring)
            (hsPkgs.chiasma)
            (hsPkgs.composition-extra)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.cornea)
            (hsPkgs.data-default)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.either)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.hslogger)
            (hsPkgs.lens)
            (hsPkgs.lifted-base)
            (hsPkgs.messagepack)
            (hsPkgs.monad-control)
            (hsPkgs.mtl)
            (hsPkgs.nvim-hs)
            (hsPkgs.pretty-terminal)
            (hsPkgs.prettyprinter)
            (hsPkgs.prettyprinter-ansi-terminal)
            (hsPkgs.process)
            (hsPkgs.relude)
            (hsPkgs.resourcet)
            (hsPkgs.ribosome)
            (hsPkgs.ribosome-test)
            (hsPkgs.safe)
            (hsPkgs.split)
            (hsPkgs.stm)
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
      };
    }