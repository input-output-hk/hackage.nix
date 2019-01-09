{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "ribosome"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2018 Torsten Schmits";
      maintainer = "tek@tryp.io";
      author = "Torsten Schmits";
      homepage = "https://github.com/tek/ribosome-hs#readme";
      url = "";
      synopsis = "api extensions for nvim-hs";
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
          (hsPkgs.either)
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
          (hsPkgs.safe)
          (hsPkgs.split)
          (hsPkgs.stm)
          (hsPkgs.strings)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unliftio)
          (hsPkgs.utf8-string)
          ];
        };
      tests = {
        "ribosome-functional" = {
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
            (hsPkgs.either)
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
            (hsPkgs.ribosome)
            (hsPkgs.safe)
            (hsPkgs.split)
            (hsPkgs.stm)
            (hsPkgs.strings)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unliftio)
            (hsPkgs.utf8-string)
            ];
          };
        "ribosome-unit" = {
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
            (hsPkgs.either)
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
            (hsPkgs.ribosome)
            (hsPkgs.safe)
            (hsPkgs.split)
            (hsPkgs.stm)
            (hsPkgs.strings)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unliftio)
            (hsPkgs.utf8-string)
            ];
          };
        };
      };
    }