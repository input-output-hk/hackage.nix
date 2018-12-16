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
        name = "zifter";
        version = "0.0.0.0";
      };
      license = "MIT";
      copyright = "Copyright: (c) 2017 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "http://cs-syd.eu";
      url = "";
      synopsis = "zifter";
      description = "zifter";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.optparse-applicative)
          (hsPkgs.path)
          (hsPkgs.path-io)
          (hsPkgs.process)
          (hsPkgs.safe)
          (hsPkgs.validity)
          (hsPkgs.stm)
          (hsPkgs.ansi-terminal)
          (hsPkgs.validity-path)
        ];
      };
      tests = {
        "zifter-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.zifter)
            (hsPkgs.QuickCheck)
            (hsPkgs.genvalidity)
            (hsPkgs.genvalidity-hspec)
            (hsPkgs.hspec)
            (hsPkgs.path)
            (hsPkgs.path-io)
            (hsPkgs.stm)
            (hsPkgs.ansi-terminal)
          ];
        };
      };
    };
  }