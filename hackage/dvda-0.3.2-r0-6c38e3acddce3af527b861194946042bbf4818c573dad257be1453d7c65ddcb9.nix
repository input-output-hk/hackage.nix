{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { stresstest = false; test = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "dvda"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 - 2012 Greg Horn\n(c) 2009 Andy Gill";
      maintainer = "gregmainland@gmail.edu";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "Efficient automatic differentiation and code generation";
      description = "dvda == DVDA Verifiably Differentiates Algorithmically\n\nThis library provides a symbolic scalar type `Dvda.Expr` which is\nmanipulated mathematically through its Num\\/Fractional\\/Floating instances.\n\nAutomatic differentiation can be performed with `Dvda.AD`. Expressions can be turned into\ncomputational graphs (@FunGraph@s) using toFunGraph. This uses unsafe reification for performance reasons,\nand explicit common subexpression elimination using hashing can be performed using `Dvda.CSE`\n\n@FunGraph@s can be converted to C code and MATLAB mex functions. In the future there will be JIT compilation\nso you can call these functions efficiently from Haskell.\n\nPretty graphviz plots!\n\nTo get started check out the source for `Dvda.Examples`";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.file-location)
          (hsPkgs.hashable)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashtables)
          (hsPkgs.graphviz)
          (hsPkgs.fgl)
          (hsPkgs.mtl)
          (hsPkgs.directory)
          (hsPkgs.QuickCheck)
          (hsPkgs.test-framework-quickcheck2)
          (hsPkgs.test-framework)
          (hsPkgs.process)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.dvda)
            (hsPkgs.file-location)
            (hsPkgs.hashable)
            (hsPkgs.hashtables)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.graphviz)
            (hsPkgs.fgl)
            (hsPkgs.mtl)
            (hsPkgs.directory)
            (hsPkgs.QuickCheck)
            (hsPkgs.process)
            (hsPkgs.ad)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework)
            ];
          };
        };
      };
    }