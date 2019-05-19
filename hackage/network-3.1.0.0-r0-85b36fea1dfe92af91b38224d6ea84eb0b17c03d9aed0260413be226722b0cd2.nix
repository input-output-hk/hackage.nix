{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "network"; version = "3.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto, Evan Borden";
      author = "";
      homepage = "https://github.com/haskell/network";
      url = "";
      synopsis = "Low-level networking interface";
      description = "This package provides a low-level networking interface.\n\n=== High-Level Packages\nOther packages provide higher level interfaces:\n\n* connection\n* hookup\n* network-simple\n\n=== Related Packages\n==== @network-bsd@\nIn @network-3.0.0.0@ the @Network.BSD@ module was split off into its own\npackage, @network-bsd-3.0.0.0@.\n\n==== @network-uri@\nIn @network-2.6@ the @Network.URI@ module was split off into its own package,\n@network-uri-2.6@. If you're using the @Network.URI@ module you can\nautomatically get it from the right package by adding this to your @.cabal@\nfile:\n\n> library\n>   build-depends: network-uri-flag";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.deepseq) ];
        libs = (pkgs.lib).optionals (system.isSolaris) [
          (pkgs."nsl")
          (pkgs."socket")
          ] ++ (pkgs.lib).optionals (system.isWindows) [
          (pkgs."ws2_32")
          (pkgs."iphlpapi")
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs))
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.hspec)
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover))
            ];
          };
        "doctests" = {
          depends = [ (hsPkgs.base) (hsPkgs.doctest) (hsPkgs.network) ];
          };
        };
      };
    }