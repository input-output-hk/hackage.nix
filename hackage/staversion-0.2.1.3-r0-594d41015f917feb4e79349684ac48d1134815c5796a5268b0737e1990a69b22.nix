{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      network-test = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "staversion";
        version = "0.2.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Toshio Ito <debug.ito@gmail.com>";
      author = "Toshio Ito <debug.ito@gmail.com>";
      homepage = "https://github.com/debug-ito/staversion";
      url = "";
      synopsis = "What version is the package X in stackage lts-Y.ZZ?";
      description = "A command-line tool to look for version numbers for Haskell packages in specific stackage resolvers. See README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unordered-containers)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.yaml)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.optparse-applicative)
          (hsPkgs.containers)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          (hsPkgs.megaparsec)
          (hsPkgs.semigroups)
          (hsPkgs.Cabal)
          (hsPkgs.pretty)
          (hsPkgs.ansi-wl-pprint)
        ];
      };
      exes = {
        "staversion" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.staversion)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.staversion)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
            (hsPkgs.semigroups)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
        "network-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.staversion)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }