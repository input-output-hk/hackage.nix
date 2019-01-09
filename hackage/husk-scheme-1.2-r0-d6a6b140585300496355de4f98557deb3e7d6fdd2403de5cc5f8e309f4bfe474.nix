{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "husk-scheme"; version = "1.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Justin Ethier <github.com/justinethier>";
      author = "Justin Ethier";
      homepage = "https://github.com/justinethier/husk-scheme";
      url = "";
      synopsis = "R5RS Scheme interpreter program and library.";
      description = "Husk is a dialect of Scheme written in Haskell that implements\na subset of the R5RS standard. Husk is not intended to be a\nhighly optimized version of Scheme. Rather, the goal of the\nproject is to provide a tight integration between Haskell and\nScheme while at the same time providing a great opportunity for\ndeeper understanding of both languages. In addition, by closely\nfollowing the R5RS standard the intent is to develop a Scheme\nthat is as compatible as possible with other R5RS Schemes.\nThis package includes a stand-alone executable as well as\na library that allows an interpreter to be embedded within an\nexisting Haskell application.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.haskeline)
          (hsPkgs.haskell98)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          ];
        };
      exes = {
        "huski" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.haskeline)
            (hsPkgs.haskell98)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            ];
          };
        };
      };
    }