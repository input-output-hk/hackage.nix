{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "zeno"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "William Sonnex <will@sonnex.name>";
      author = "William Sonnex";
      homepage = "";
      url = "";
      synopsis = "An automated proof system for Haskell programs";
      description = "Zeno is an automated proof system for Haskell program\nproperties; developed at Imperial College London by\nWilliam Sonnex, Sophia Drossopoulou and Susan Eisenbach.\nIt aims to solve the general problem of equality between\ntwo Haskell terms, for any input value.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "zeno" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.array)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.directory)
            (hsPkgs.text)
            (hsPkgs.process)
            (hsPkgs.transformers)
            (hsPkgs.parallel)
            ];
          };
        };
      };
    }