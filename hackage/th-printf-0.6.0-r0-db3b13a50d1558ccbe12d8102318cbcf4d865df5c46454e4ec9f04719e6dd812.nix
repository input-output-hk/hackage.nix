{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { werror = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "th-printf";
        version = "0.6.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "me@jude.xyz";
      author = "Jude Taylor";
      homepage = "https://github.com/pikajude/th-printf#readme";
      url = "";
      synopsis = "Quasiquoters for printf";
      description = "Quasiquoters for printf: string, bytestring, text.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.charset)
          (hsPkgs.containers)
          (hsPkgs.microlens-platform)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.semigroups)
          (hsPkgs.template-haskell)
          (hsPkgs.th-lift)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "format" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.template-haskell)
            (hsPkgs.th-printf)
          ];
        };
      };
    };
  }