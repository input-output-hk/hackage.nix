{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "botpp";
        version = "0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Cale Gibbard <cgibbard@gmail.com>";
      author = "Don Stewart";
      homepage = "http://haskell.org/haskellwiki/Lambdabot";
      url = "";
      synopsis = "Build tool for Lambdabot";
      description = "This is a build tool for the Lambdabot IRC bot, which processes\nsimple directives to write a bunch of boilerplate Haskell code.";
      buildType = "Simple";
    };
    components = {
      "botpp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
      exes = { "BotPP" = {}; };
    };
  }