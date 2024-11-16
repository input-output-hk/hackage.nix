{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "xz-clib"; version = "5.6.3"; };
      license = "0BSD";
      copyright = "(c) 2021 Julian Ospald";
      maintainer = "hasufell@posteo.de";
      author = "Julian Ospald";
      homepage = "https://github.com/hasufell/lzma-static";
      url = "";
      synopsis = "LZMA/XZ clibs";
      description = "C source code for the LZMA/XZ compression and decompression library";
      buildType = "Configure";
    };
    components = { "library" = { buildable = true; }; };
  }