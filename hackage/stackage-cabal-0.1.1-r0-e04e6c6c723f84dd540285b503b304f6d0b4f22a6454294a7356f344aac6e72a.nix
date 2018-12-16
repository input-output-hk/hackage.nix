{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "stackage-cabal";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "2015 FP Complete Corporation";
      maintainer = "danburton@fpcomplete.com";
      author = "Dan Burton";
      homepage = "https://www.stackage.org/package/stackage-cabal";
      url = "";
      synopsis = "A CLI executable for cabal-based stackage commands";
      description = "A CLI executable for cabal-based stackage commands";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
      exes = {
        "stackage-init" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.stackage-cli)
            (hsPkgs.system-fileio)
            (hsPkgs.optparse-applicative)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-types)
            (hsPkgs.bytestring)
          ];
        };
        "stackage-purge" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.stackage-cli)
            (hsPkgs.system-fileio)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.parsec)
            (hsPkgs.exceptions)
          ];
        };
        "stackage-upgrade" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.stackage-cli)
            (hsPkgs.system-fileio)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
    };
  }