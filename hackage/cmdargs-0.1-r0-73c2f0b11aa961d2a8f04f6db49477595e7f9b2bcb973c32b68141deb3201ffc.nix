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
        name = "cmdargs";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2009";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "http://community.haskell.org/~ndm/cmdargs/";
      url = "";
      synopsis = "Command line argument processing";
      description = "An easy way to define command line parsers. The two key features are:\n1) It's very concise to use, up to three times shorter than getopt.\n2) It supports programs with multiple modes (e.g. darcs or cabal).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.filepath)
        ];
      };
      exes = { "cmdargs" = {}; };
    };
  }