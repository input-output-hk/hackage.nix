{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "network";
        version = "2.6.3.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto, Evan Borden";
      author = "";
      homepage = "https://github.com/haskell/network";
      url = "";
      synopsis = "Low-level networking interface";
      description = "This package provides a low-level networking interface.\n\nIn network-2.6 the @Network.URI@ module was split off into its own\npackage, network-uri-2.6. If you're using the @Network.URI@ module\nyou can automatically get it from the right package by adding this\nto your .cabal file:\n\n> flag network-uri\n>   description: Get Network.URI from the network-uri package\n>   default: True\n>\n> library\n>   -- ...\n>   if flag(network-uri)\n>     build-depends: network-uri >= 2.6, network >= 2.6\n>   else\n>     build-depends: network-uri < 2.6, network < 2.6\n\nThat is, get the module from either network < 2.6 or from\nnetwork-uri >= 2.6.";
      buildType = "Configure";
    };
    components = {
      "network" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
      tests = {
        "simple" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
        "regression" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }