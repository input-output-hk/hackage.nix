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
        name = "toxcore";
        version = "0.2.0";
      };
      license = "GPL-3.0-only";
      copyright = "© 2016-2018 iphy";
      maintainer = "iphy";
      author = "iphy";
      homepage = "https://toktok.github.io";
      url = "";
      synopsis = "Haskell bindings to the C reference implementation of Tox";
      description = "Haskell bindings to the C reference implementation of Tox.\n\nSee <https://github.com/TokTok/toxcore>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.data-default-class)
        ];
        libs = [ (pkgs."toxcore") ];
      };
      exes = {
        "groupbot" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.toxcore)
          ];
          libs = [ (pkgs."toxcore") ];
        };
      };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-arbitrary)
            (hsPkgs.data-default-class)
            (hsPkgs.hspec)
            (hsPkgs.saltine)
            (hsPkgs.toxcore)
          ];
        };
      };
    };
  }