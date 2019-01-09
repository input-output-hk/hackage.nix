{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "chromatin"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2018 Torsten Schmits";
      maintainer = "tek@tryp.io";
      author = "Torsten Schmits";
      homepage = "https://github.com/tek/chromatin-hs#readme";
      url = "";
      synopsis = "neovim package manager";
      description = "Please see the README on GitHub at <https://github.com/tek/chromatin-hs>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.Glob)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hslogger)
          (hsPkgs.lens)
          (hsPkgs.messagepack)
          (hsPkgs.nvim-hs)
          (hsPkgs.parsec)
          (hsPkgs.prettyprinter)
          (hsPkgs.resourcet)
          (hsPkgs.ribosome)
          (hsPkgs.split)
          (hsPkgs.stm-chans)
          (hsPkgs.stm-conduit)
          (hsPkgs.transformers)
          (hsPkgs.typed-process)
          (hsPkgs.unliftio)
          ];
        };
      exes = {
        "chromatin" = {
          depends = [
            (hsPkgs.Glob)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.chromatin)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.data-default-class)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hslogger)
            (hsPkgs.lens)
            (hsPkgs.messagepack)
            (hsPkgs.nvim-hs)
            (hsPkgs.parsec)
            (hsPkgs.prettyprinter)
            (hsPkgs.resourcet)
            (hsPkgs.ribosome)
            (hsPkgs.split)
            (hsPkgs.stm-chans)
            (hsPkgs.stm-conduit)
            (hsPkgs.transformers)
            (hsPkgs.typed-process)
            (hsPkgs.unliftio)
            ];
          };
        };
      tests = {
        "chromatin-functional" = {
          depends = [
            (hsPkgs.Glob)
            (hsPkgs.HTF)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.chromatin)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.data-default-class)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hslogger)
            (hsPkgs.lens)
            (hsPkgs.messagepack)
            (hsPkgs.nvim-hs)
            (hsPkgs.parsec)
            (hsPkgs.prettyprinter)
            (hsPkgs.resourcet)
            (hsPkgs.ribosome)
            (hsPkgs.split)
            (hsPkgs.stm-chans)
            (hsPkgs.stm-conduit)
            (hsPkgs.transformers)
            (hsPkgs.typed-process)
            (hsPkgs.unliftio)
            ];
          };
        "chromatin-unit" = {
          depends = [
            (hsPkgs.Glob)
            (hsPkgs.HTF)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.chromatin)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.data-default-class)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hslogger)
            (hsPkgs.lens)
            (hsPkgs.messagepack)
            (hsPkgs.nvim-hs)
            (hsPkgs.parsec)
            (hsPkgs.prettyprinter)
            (hsPkgs.resourcet)
            (hsPkgs.ribosome)
            (hsPkgs.split)
            (hsPkgs.stm-chans)
            (hsPkgs.stm-conduit)
            (hsPkgs.transformers)
            (hsPkgs.typed-process)
            (hsPkgs.unliftio)
            ];
          };
        };
      };
    }