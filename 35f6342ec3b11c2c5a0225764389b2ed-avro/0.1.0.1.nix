{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
      templatehaskell = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "avro";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tommd@galois.com";
        author = "Thomas M. DuBuisson";
        homepage = "https://github.com/GaloisInc/avro.git";
        url = "";
        synopsis = "Avro serialization support for Haskell";
        description = "Avro serialization and deserialization support for Haskell";
        buildType = "Simple";
      };
      components = {
        avro = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.array
            hsPkgs.base16-bytestring
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-binary-ieee754
            hsPkgs.entropy
            hsPkgs.fail
            hsPkgs.hashable
            hsPkgs.mtl
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.pure-zlib
            hsPkgs.semigroups
            hsPkgs.tagged
          ] ++ pkgs.lib.optional _flags.templatehaskell hsPkgs.template-haskell;
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.avro
              hsPkgs.aeson
              hsPkgs.array
              hsPkgs.base16-bytestring
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.entropy
              hsPkgs.extra
              hsPkgs.fail
              hsPkgs.hashable
              hsPkgs.mtl
              hsPkgs.scientific
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.pure-zlib
              hsPkgs.semigroups
              hsPkgs.tagged
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ] ++ pkgs.lib.optional _flags.templatehaskell hsPkgs.template-haskell;
          };
        };
      };
    }