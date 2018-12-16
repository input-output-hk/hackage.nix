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
      specVersion = "1.6";
      identifier = {
        name = "tfp-th";
        version = "0.8";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013 Henning Thielemann, 2008 Peter Gavin";
      maintainer = "haskell@henning-thielemann.de";
      author = "Peter Gavin, Henning Thielemann";
      homepage = "http://www.haskell.org/haskellwiki/Type_arithmetic";
      url = "";
      synopsis = "Template-Haskell code for tfp";
      description = "This package contains Template Haskell for generating tons of type integer literals\nand a module that provides integers from a large range.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.tfp)
          (hsPkgs.template-haskell)
          (hsPkgs.base)
        ];
      };
    };
  }