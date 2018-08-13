{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      newbase = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "multiarg";
        version = "0.4.0.0";
      };
      license = "MIT";
      copyright = "2011-2012 Omari Norman.";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "https://github.com/massysett/multiarg";
      url = "";
      synopsis = "Combinators to build command line parsers";
      description = "multiarg is a parser combinator library to build command\nline parsers. With it you can easily create parsers with options\nthat take more than one option argument--for example, I created\nmultiarg due to the apparent lack of such ability amongst other\nparsers. Its basic design is loosely inspired by Parsec.\n\nProvides Parser, a monad you use to build parsers. This monad exposes\nmultiarg's full functionality. The library also has a simple,\npre-built parser built with the underlying combinators, which works\nfor many situtations and shields you from the underlying complexity\nif you don't need it.\n\nSee the documentation in the System.Console.MultiArg module for\ndetails.";
      buildType = "Simple";
    };
    components = {
      "multiarg" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.explicit-exception)
          (hsPkgs.containers)
        ] ++ (if _flags.newbase
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.base)
            (hsPkgs.utf8-string)
          ]);
      };
    };
  }