{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      template-haskell-210 = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "th-reify-compat";
        version = "0.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016 Kei Hibino";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "http://github.com/khibino/haskell-th-reify-compat/";
      url = "";
      synopsis = "Compatibility for the result type of TH reify";
      description = "This package contains compatible interfaces against\nthe result type of TH reify function.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ] ++ [
          (hsPkgs.template-haskell)
        ];
      };
    };
  }