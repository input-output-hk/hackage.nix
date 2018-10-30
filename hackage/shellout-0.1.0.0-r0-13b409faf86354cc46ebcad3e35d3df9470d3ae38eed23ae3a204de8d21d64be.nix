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
        name = "shellout";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Logan McPhail";
      maintainer = "logan.airnomad@gmail.com";
      author = "Logan McPhail";
      homepage = "https://github.com/loganmac/shellout#readme";
      url = "";
      synopsis = "A threaded manager for Haskell that can run and stream external process output/err/exits";
      description = "Please see the README on Github at <https://github.com/loganmac/shellout#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.typed-process)
        ];
      };
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.shellout)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.typed-process)
          ];
        };
      };
    };
  }