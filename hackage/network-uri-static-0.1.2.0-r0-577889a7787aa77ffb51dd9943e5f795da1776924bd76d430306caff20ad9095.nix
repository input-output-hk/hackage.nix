{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      defer-to-network-uri = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "network-uri-static";
        version = "0.1.2.0";
      };
      license = "MIT";
      copyright = "2015 Satoshi Nakamura";
      maintainer = "snak@snak.org";
      author = "Satoshi Nakamura";
      homepage = "http://github.com/snakamura/network-uri-static";
      url = "";
      synopsis = "A small utility to declare type-safe static URIs";
      description = "This library helps you declare type-safe static URIs by parsing URIs at compile time.\n\nYou can write static URIs using typed template haskell:\n\n> url :: URI\n> url = \$\$(staticURI \"http://www.google.com/\")\n\nor using QuasiQuote:\n\n> url :: URI\n> url = [uri|http://www.google.com/|]\n\nWhen you pass a malformed URI to these expressions, they emit an error at compile time.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network-uri)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }