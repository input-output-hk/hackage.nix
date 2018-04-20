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
          version = "0.2.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Alexey Raga <alexey.raga@gmail.com>";
        author = "Thomas M. DuBuisson";
        homepage = "https://github.com/haskell-works/hw-haskell-avro.git";
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
            hsPkgs.pure-zlib
            hsPkgs.scientific
            hsPkgs.semigroups
            hsPkgs.tagged
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
          ] ++ pkgs.lib.optional _flags.templatehaskell hsPkgs.template-haskell;
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.lens-aeson
              hsPkgs.array
              hsPkgs.avro
              hsPkgs.base16-bytestring
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.entropy
              hsPkgs.extra
              hsPkgs.fail
              hsPkgs.hashable
              hsPkgs.hspec
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.pure-zlib
              hsPkgs.QuickCheck
              hsPkgs.scientific
              hsPkgs.semigroups
              hsPkgs.tagged
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.unordered-containers
              hsPkgs.vector
            ] ++ pkgs.lib.optional _flags.templatehaskell hsPkgs.template-haskell;
          };
        };
      };
    }