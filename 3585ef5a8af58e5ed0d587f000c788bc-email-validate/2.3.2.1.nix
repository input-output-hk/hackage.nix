{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "email-validate";
          version = "2.3.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "George Pollard <porges@porg.es>";
        author = "George Pollard <porges@porg.es>";
        homepage = "https://github.com/Porges/email-validate-hs";
        url = "";
        synopsis = "Email address validation";
        description = "Validating an email address string against RFC 5322";
        buildType = "Simple";
      };
      components = {
        "email-validate" = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.template-haskell
          ];
        };
        tests = {
          "Main" = {
            depends  = [
              hsPkgs.email-validate
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.bytestring
            ];
          };
          "doctests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }