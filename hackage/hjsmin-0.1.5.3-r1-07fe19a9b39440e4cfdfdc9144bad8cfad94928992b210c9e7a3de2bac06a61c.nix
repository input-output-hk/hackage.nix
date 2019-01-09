{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = { name = "hjsmin"; version = "0.1.5.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Erik de Castro Lopo <erikd@mega-nerd.com>";
      author = "Alan Zimmerman <alan.zimm@gmail.com>";
      homepage = "http://github.com/erikd/hjsmin";
      url = "";
      synopsis = "Haskell implementation of a javascript minifier";
      description = "Reduces size of javascript files by stripping out extraneous whitespace and\nother syntactic elements, without changing the semantics.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.language-javascript)
          ];
        };
      exes = {
        "hjsmin" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.blaze-builder)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.language-javascript)
            (hsPkgs.optparse-applicative)
            ];
          };
        };
      tests = {
        "test-hjsmin" = {
          depends = [
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.blaze-builder)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.language-javascript)
            ];
          };
        };
      };
    }