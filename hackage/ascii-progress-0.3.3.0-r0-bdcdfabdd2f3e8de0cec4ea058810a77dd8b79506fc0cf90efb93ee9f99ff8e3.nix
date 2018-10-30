{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ascii-progress";
        version = "0.3.3.0";
      };
      license = "MIT";
      copyright = "(c) 2015 Pedro Tacla Yamada";
      maintainer = "tacla.yamada@gmail.com";
      author = "Pedro Tacla Yamada";
      homepage = "https://github.com/yamadapc/haskell-ascii-progress";
      url = "";
      synopsis = "A simple progress bar for the console.";
      description = "A simple Haskell progress bar for the console. Heavily borrows from TJ\nHolowaychuk's Node.JS project\n<https://github.com/tj/node-progress progress>\n\n<https://github.com/yamadapc/haskell-ascii-progress github>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.concurrent-output)
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.data-default)
          (hsPkgs.time)
        ];
      };
      exes = {
        "example" = {
          depends  = pkgs.lib.optionals (!(!flags.examples)) [
            (hsPkgs.concurrent-output)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.data-default)
            (hsPkgs.time)
          ];
        };
        "npm-example" = {
          depends  = pkgs.lib.optionals (!(!flags.examples)) [
            (hsPkgs.concurrent-output)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.data-default)
            (hsPkgs.time)
          ];
        };
        "download-example" = {
          depends  = pkgs.lib.optionals (!(!flags.examples)) [
            (hsPkgs.HTTP)
            (hsPkgs.concurrent-output)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.time)
            (hsPkgs.conduit)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.transformers)
          ];
        };
        "multi-example" = {
          depends  = pkgs.lib.optionals (!(!flags.examples)) [
            (hsPkgs.concurrent-output)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.data-default)
            (hsPkgs.time)
          ];
        };
        "crazy-multi-example" = {
          depends  = pkgs.lib.optionals (!(!flags.examples)) [
            (hsPkgs.concurrent-output)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.data-default)
            (hsPkgs.random)
            (hsPkgs.time)
          ];
        };
      };
      tests = {
        "hspec" = {
          depends  = [
            (hsPkgs.concurrent-output)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.data-default)
            (hsPkgs.hspec)
            (hsPkgs.time)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }