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
        name = "linearscan-hoopl";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "johnw@newartisans.com";
      author = "John Wiegley";
      homepage = "http://github.com/jwiegley/linearscan-hoopl";
      url = "";
      synopsis = "Makes it easy to use the linearscan register allocator with Hoopl";
      description = "This module provides two convenience features for Hoopl users that wish to\nuse @linearscan@ for register allocation in their compilers.\n\nFirst, it defines a type class called 'NodeAlloc'. After defining an\ninstance of this class for your particular graph node type, simply call\n'LinearScan.Hoopl.allocateHoopl'. This is a simpler interface than using\n@linearscan@ directly, which requires two records of functions that are more\ngeneral in nature than the methods of 'NodeAlloc'.\n\nSecond, it provides a DSL for constructing assembly language DSLs that\ncompile into Hoople program graphs. See the tests for a concrete example.\nThis is mainly useful for constructing tests of intermediate representations.\n\nPlease see the tests for an example of the simple assembly language that is\nused to test the @linearscan@ allocator.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hoopl)
          (hsPkgs.linearscan)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.free)
          (hsPkgs.QuickCheck)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.hoopl)
            (hsPkgs.linearscan)
            (hsPkgs.linearscan-hoopl)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.lens-family-core)
            (hsPkgs.deepseq)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }