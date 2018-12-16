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
      specVersion = "1.10";
      identifier = {
        name = "haskell-lsp-client";
        version = "1.0.0.1";
      };
      license = "GPL-2.0-only";
      copyright = "2017 Jaro Reinders";
      maintainer = "jaro.reinders@gmail.com";
      author = "Jaro Reinders";
      homepage = "https://github.com/noughtmare/haskell-lsp-client#readme";
      url = "";
      synopsis = "A haskell package to build your own Language Server client.";
      description = "This package is intended for developers of text editors who want to make their text editor\ncompatible with the <https://github.com/Microsoft/language-server-protocol/blob/master/protocol.md Language Server Protocol>.\nI have developed this package with plans to integrate it in the <https://github.com/yi-editor/yi Yi Editor>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.haskell-lsp)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.lens)
          (hsPkgs.bytestring)
          (hsPkgs.process)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "example-client" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell-lsp)
            (hsPkgs.text)
            (hsPkgs.haskell-lsp-client)
            (hsPkgs.process)
            (hsPkgs.lens)
            (hsPkgs.directory)
          ] ++ (if system.isWindows
            then [ (hsPkgs.Win32) ]
            else [ (hsPkgs.unix) ]);
        };
      };
    };
  }