{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ed25519-donna";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tommd@galois.com";
        author = "Thomas M. DuBuisson";
        homepage = "github.com/tommd/hs-ed25519-donna";
        url = "";
        synopsis = "Haskell bindings to ed25519-donna (Elliptical Curve Signature Scheme)";
        description = "";
        buildType = "Simple";
      };
      components = {
        ed25519-donna = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.crypto-api
          ];
        };
      };
    }