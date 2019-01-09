{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "parameterized-data"; version = "0.1.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008-2010 Alfonso Acosta, Oleg Kiselyov, Wolfgang Jeltsch\nand KTH's SAM group";
      maintainer = "Hosein Attarzadeh (shan2@kth.se)";
      author = "Alfonso Acosta (alfonso.acosta@gmail.com)";
      homepage = "http://code.haskell.org/parameterized-data";
      url = "http://code.haskell.org/parameterized-data";
      synopsis = "Parameterized data library implementing lightweight dependent\ntypes";
      description = "This library provides an implementation of parameterized types using\ntype-level computations to implement the type parameters and emulate\ndependent types.\nRight now only fixed-sized vectors are provided. A tutorial on how to use them can be found at <http://www.ict.kth.se/forsyde/files/tutorial/tutorial.html#FSVec>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.type-level)
          (hsPkgs.template-haskell)
          ];
        };
      };
    }