{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "proteome"; version = "0.3.4.0"; };
      license = "MIT";
      copyright = "2018 Torsten Schmits";
      maintainer = "tek@tryp.io";
      author = "Torsten Schmits";
      homepage = "https://github.com/tek/proteome-hs#readme";
      url = "";
      synopsis = "neovim project manager";
      description = "Please see the README on GitHub at <https://github.com/tek/proteome-hs>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.MissingH)
          (hsPkgs.aeson)
          (hsPkgs.ansi-terminal)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hslogger)
          (hsPkgs.lens)
          (hsPkgs.messagepack)
          (hsPkgs.mtl)
          (hsPkgs.nvim-hs)
          (hsPkgs.pretty-terminal)
          (hsPkgs.prettyprinter)
          (hsPkgs.process)
          (hsPkgs.resourcet)
          (hsPkgs.split)
          (hsPkgs.stm)
          (hsPkgs.strings)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unliftio)
          (hsPkgs.utf8-string)
          ];
        };
      exes = {
        "proteome" = {
          depends = [
            (hsPkgs.MissingH)
            (hsPkgs.aeson)
            (hsPkgs.ansi-terminal)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-default-class)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hslogger)
            (hsPkgs.lens)
            (hsPkgs.messagepack)
            (hsPkgs.mtl)
            (hsPkgs.nvim-hs)
            (hsPkgs.pretty-terminal)
            (hsPkgs.prettyprinter)
            (hsPkgs.process)
            (hsPkgs.proteome)
            (hsPkgs.resourcet)
            (hsPkgs.split)
            (hsPkgs.stm)
            (hsPkgs.strings)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unliftio)
            (hsPkgs.utf8-string)
            ];
          };
        };
      tests = {
        "proteome-functional" = {
          depends = [
            (hsPkgs.HTF)
            (hsPkgs.MissingH)
            (hsPkgs.aeson)
            (hsPkgs.ansi-terminal)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-default-class)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hslogger)
            (hsPkgs.lens)
            (hsPkgs.messagepack)
            (hsPkgs.mtl)
            (hsPkgs.nvim-hs)
            (hsPkgs.pretty-terminal)
            (hsPkgs.prettyprinter)
            (hsPkgs.process)
            (hsPkgs.proteome)
            (hsPkgs.resourcet)
            (hsPkgs.split)
            (hsPkgs.stm)
            (hsPkgs.strings)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unliftio)
            (hsPkgs.utf8-string)
            ];
          };
        "proteome-unit" = {
          depends = [
            (hsPkgs.HTF)
            (hsPkgs.MissingH)
            (hsPkgs.aeson)
            (hsPkgs.ansi-terminal)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-default-class)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hslogger)
            (hsPkgs.lens)
            (hsPkgs.messagepack)
            (hsPkgs.mtl)
            (hsPkgs.nvim-hs)
            (hsPkgs.pretty-terminal)
            (hsPkgs.prettyprinter)
            (hsPkgs.process)
            (hsPkgs.proteome)
            (hsPkgs.resourcet)
            (hsPkgs.split)
            (hsPkgs.stm)
            (hsPkgs.strings)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unliftio)
            (hsPkgs.utf8-string)
            ];
          };
        };
      };
    }