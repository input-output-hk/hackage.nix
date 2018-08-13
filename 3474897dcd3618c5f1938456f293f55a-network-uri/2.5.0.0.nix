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
      specVersion = "1.10";
      identifier = {
        name = "network-uri";
        version = "2.5.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "johan.tibell@gmail.com";
      author = "";
      homepage = "https://github.com/haskell/network-uri";
      url = "";
      synopsis = "URI manipulation";
      description = "This package provides an URI manipulation interface.\n\nVersion 2.5 (unlike the following versions) is a dummy package that\nprevents module name clashes between network-uri and network, if\nused together with a Cabal flag as described below.\n\nIn network-2.6 the @Network.URI@ module was split off from the\nnetwork package into this package. If you're using the @Network.URI@\nmodule you can automatically get it from the right package by adding\nthis to your .cabal file:\n\n> flag network-uri\n>   description: Get Network.URI from the network-uri package\n>   default: True\n>\n> library\n>   -- ...\n>   if flag(network-uri)\n>     build-depends: network-uri >= 2.6, network >= 2.6\n>   else\n>     build-depends: network-uri < 2.6, network < 2.6\n\nThat is, get the module from either network < 2.6 or from\nnetwork-uri >= 2.6.";
      buildType = "Simple";
    };
    components = {
      "network-uri" = {};
    };
  }