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
        name = "scholdoc-types";
        version = "0.1.3.1";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) 2014 Tim T.Y. Lin, (c) 2006-2014 John MacFarlane";
      maintainer = "timtylin@gmail.com";
      author = "Tim T.Y. Lin";
      homepage = "http://scholdoc.scholarlymarkdown.com";
      url = "";
      synopsis = "Scholdoc fork of pandoc-types";
      description = "This package is a fork of @pandoc-types@ intended to\nsupport the development of Scholdoc. It includes some\nnon-trivial extensions to the Pandoc types and builder\nfunctions that are not easily implemented by depending on\nand extending the @pandoc-types@ modules.\n\nThis package is currently up to date with @pandoc-types@\nversion 1.12.4\n\nFor descriptions of the original @pandoc-types@ package,\nplease visit\n<http://hackage.haskell.org/package/pandoc-types>";
      buildType = "Simple";
    };
    components = {
      "scholdoc-types" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.syb)
          (hsPkgs.ghc-prim)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
          (hsPkgs.deepseq-generics)
        ];
      };
    };
  }