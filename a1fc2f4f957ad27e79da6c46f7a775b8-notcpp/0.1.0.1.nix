{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "notcpp";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2012 Ben Millwood";
      maintainer = "Ben Millwood <haskell@benmachine.co.uk>";
      author = "Ben Millwood <haskell@benmachine.co.uk>";
      homepage = "";
      url = "";
      synopsis = "Avoiding the C preprocessor via cunning use of Template Haskell";
      description = "notcpp is a library that attempts to provide an alternative to\nusing CPP as a mechanism for conditional compilation. It provides\nfacilities for determining if specific names or class instances\nexist and responding accordingly.\n\nWhen a value or class instance appears between minor releases of a\nthird-party package, a common way of dealing with the problem is to\nuse CPP to conditionally use one block of code or another. The\ntrouble with CPP is it's hard to statically analyse: tools based on\nhaskell-src-exts will outright refuse to parse it, for example. It\nturns out Template Haskell will do the same job in some cases.\n\nnotcpp is largely a proof-of-concept, experimental package: you\nare welcome to use it if it suits you, but it may be liable to\nchange suddenly.";
      buildType = "Simple";
    };
    components = {
      "notcpp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }