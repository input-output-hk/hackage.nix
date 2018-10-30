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
      specVersion = "1.6";
      identifier = {
        name = "soxlib";
        version = "0.0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Sox";
      url = "";
      synopsis = "Write, read, convert audio signals using libsox";
      description = "This is an FFI binding to @libsox@ of the Sox (Sound Exchanger) project\n<http://sox.sourceforge.net/>.\nIt lets write, read and convert audio signals\nin various formats, resolutions, and numbers of channels.\n\nThe package @sox@ has similar functionality\nbut calls the @sox@ shell command.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.sample-frame)
          (hsPkgs.storablevector)
          (hsPkgs.explicit-exception)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.utility-ht)
          (hsPkgs.base)
        ];
        pkgconfig = [
          (pkgconfPkgs.sox)
        ];
      };
    };
  }