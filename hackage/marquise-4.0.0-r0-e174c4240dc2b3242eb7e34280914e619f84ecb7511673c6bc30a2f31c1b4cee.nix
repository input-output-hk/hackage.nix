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
        name = "marquise";
        version = "4.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "© 2013-2015 Anchor Systems, Pty Ltd and Others";
      maintainer = "Anchor Engineering <engineering@anchor.com.au>";
      author = "Anchor Engineering <engineering@anchor.com.au>";
      homepage = "";
      url = "";
      synopsis = "Client library for Vaultaire";
      description = "Marquise is a collection of a library and two executables for use with Vaultaire.\n\n1. A client and server library for reading/writing to the vault and spool files.\nThis provides streaming reads and writes to the vault using\n[pipes](https://hackage.haskell.org/package/pipes) as well as writing to spool\nfiles with automatic caching and rotation.\n\n2. An executable `marquised`, a daemon which writes data to the vault from spool\nfiles generated from users of the marquise library.\n\n3. An executable `data`, used for easily inspecting data in the vault as well as\nmarquise cache files.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.monad-logger)
          (hsPkgs.fast-logger)
          (hsPkgs.either)
          (hsPkgs.errors)
          (hsPkgs.transformers-base)
          (hsPkgs.monad-control)
          (hsPkgs.mmorph)
          (hsPkgs.lifted-async)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.attoparsec)
          (hsPkgs.unix)
          (hsPkgs.pipes)
          (hsPkgs.pipes-group)
          (hsPkgs.pipes-bytestring)
          (hsPkgs.pipes-attoparsec)
          (hsPkgs.siphash)
          (hsPkgs.async)
          (hsPkgs.hslogger)
          (hsPkgs.hashable)
          (hsPkgs.binary)
          (hsPkgs.packer)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.semigroups)
          (hsPkgs.cryptohash)
          (hsPkgs.zeromq4-haskell)
          (hsPkgs.time)
          (hsPkgs.vaultaire-common)
        ];
      };
      exes = {
        "marquised" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hslogger)
            (hsPkgs.optparse-applicative)
            (hsPkgs.unix)
            (hsPkgs.async)
            (hsPkgs.containers)
            (hsPkgs.vaultaire-common)
            (hsPkgs.marquise)
          ];
        };
        "data" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hslogger)
            (hsPkgs.optparse-applicative)
            (hsPkgs.unix)
            (hsPkgs.pipes)
            (hsPkgs.text)
            (hsPkgs.attoparsec)
            (hsPkgs.unordered-containers)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.data-binary-ieee754)
            (hsPkgs.packer)
            (hsPkgs.vaultaire-common)
            (hsPkgs.marquise)
          ];
        };
      };
      tests = {
        "spool-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.bytestring)
            (hsPkgs.marquise)
          ];
        };
      };
    };
  }