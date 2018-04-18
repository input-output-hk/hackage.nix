{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.16";
        identifier = {
          name = "IsNull";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jmacristovao@gmail.com";
        author = "João Cristóvão";
        homepage = "https://github.com/jcristovao/IsNull";
        url = "";
        synopsis = "A typeclass to determine if a given value is null.";
        description = "A typeclass to determine if a given foldable type\n(or other) is empty ~ null ~ invalid.\nThe definition is intentionally vague, to cover types\nfrom Either to Text and Sets.";
        buildType = "Simple";
      };
      components = {
        IsNull = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.bytestring
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.containers
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.system-filepath
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
              hsPkgs.HUnit
              hsPkgs.hspec
            ];
          };
        };
      };
    }