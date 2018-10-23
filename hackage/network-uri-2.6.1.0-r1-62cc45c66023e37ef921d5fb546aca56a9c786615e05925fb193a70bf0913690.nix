{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "network-uri";
        version = "2.6.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ezra@ezrakilty.net";
      author = "";
      homepage = "https://github.com/haskell/network-uri";
      url = "";
      synopsis = "URI manipulation";
      description = "This package provides facilities for parsing and unparsing URIs, and creating\nand resolving relative URI references, closely following the URI spec,\n<http://www.ietf.org/rfc/rfc3986.txt IETF RFC 3986>.\n\n== Backward-compatibility\n\nIn @network-2.6@ the \"Network.URI\" module was split off from the\n@network@ package into this package. If you're using the \"Network.URI\"\nmodule you can be backward compatible and automatically get it from\nthe right package by using the\n</package/network-uri-flag network-uri-flag pseudo-package>\nin your @.cabal@ file's build-depends (along with dependencies for\nboth @network-uri@ and @network@):\n\n>  build-depends:\n>     network-uri-flag == 0.1.*\n\nOr you can do the same manually by adding this boilerplate to your\n@.cabal@ file:\n\n> flag network-uri\n>   description: Get Network.URI from the network-uri package\n>   default: True\n>\n> library\n>   -- ...\n>   if flag(network-uri)\n>     build-depends: network-uri >= 2.6, network >= 2.6\n>   else\n>     build-depends: network-uri < 2.6, network < 2.6\n\nThat is, get the module from either @network < 2.6@ or from\n@network-uri >= 2.6@.";
      buildType = "Simple";
    };
    components = {
      "network-uri" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.parsec)
        ];
      };
      tests = {
        "uri" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.network-uri)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }