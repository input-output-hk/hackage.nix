{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "network-uri-flag";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "";
      url = "";
      synopsis = "Pseudo-package encapsulating flag(network-uri) Cabal boilerplate";
      description = "This empty package does not provide any modules; its sole purpose is to\nprovide the @network-uri@ Cabal flag logic below so you don't have to include\nthat boilerplate in your @.cabal@ file.\n\n> flag network-uri\n>   description: Get Network.URI from the network-uri package\n>   default: True\n>\n> library\n>   if flag(network-uri)\n>     build-depends: network-uri >= 2.6, network >= 2.6\n>   else\n>     build-depends: network-uri < 2.6, network < 2.6\n\nThis avoids combining\n@network-uri >= 2.6@ with @network < 2.6@ which both export a\nname-clashing @Network.URI@ module, because\nin network-2.6 the @Network.URI@ module was split off from the\nnetwork package into network-uri-2.6.\n\nIn other words, the logic above makes sure that the @Network.URI@ module\nis provided by either @network-uri@ or by @network@\n(in the <https://en.wikipedia.org/wiki/Exclusive_or XOR> sense).\n\nIn order to benefit from this module, simply include it in your\n@build-depends@ declaration alongside @network@ and @network-uri@.\n\n>   build-depends:\n>     network >= 2.5 && < 2.7,\n>     network-uri >= 2.7 && < 2.8,\n>     network-uri-flag == 0.1.*\n\n/NOTE: It's almost always an error to list this package if network and network-uri aren't both listed as well!/";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.network-uri)
          (hsPkgs.network)
        ];
      };
    };
  }