{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "existential";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "Simon Hudon";
      maintainer = "simon.hudon@gmail.com";
      author = "Simon Hudon";
      homepage = "https://bitbucket.org/cipher2048/existential/wiki/Home";
      url = "";
      synopsis = "A library for existential types";
      description = "The library defines the type Cell and Cell1 uses Constraint kinds to so that it can stand for any existential type. Combinators and lenses of various types are built on top of 'Cell' and 'Cell1'";
      buildType = "Simple";
    };
    components = {
      "existential" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.template-haskell)
          (hsPkgs.lens)
        ];
      };
      exes = {
        "example-Eq" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.existential)
          ];
        };
      };
    };
  }