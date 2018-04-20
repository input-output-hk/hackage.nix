{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wai-routing";
          version = "0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "(c) 2014 Toralf Wittner";
        maintainer = "Toralf Wittner <tw@dtex.org>";
        author = "Toralf Wittner";
        homepage = "";
        url = "";
        synopsis = "Declarative routing for WAI.";
        description = "Enables the declaration of \\\"routes\\\" which handle requests to a\nspecific URL.\n\nThe set of possible handlers can be restricted by \\\"predicates\\\",\nwhich operate on WAI requests and have to be true or else the\nhandler will not be called.\n\nFor details have a look at the haddock documentation of\n@Network.Wai.Routing.Tutorial@ or the @examples@ folder in the\nsource distribution.\n\nThis library is a port of @snap-predicates@ which provides\nsimilar functionality for the snap-framework.\n\nThe routing tree construction is implemented using @wai-route@.";
        buildType = "Simple";
      };
      components = {
        wai-routing = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.bytestring-from
            hsPkgs.cookie
            hsPkgs.case-insensitive
            hsPkgs.http-types
            hsPkgs.transformers
            hsPkgs.wai
            hsPkgs.wai-route
          ];
        };
        tests = {
          wai-routing-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.blaze-builder
              hsPkgs.bytestring
              hsPkgs.case-insensitive
              hsPkgs.http-types
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.wai
              hsPkgs.wai-routing
            ];
          };
        };
      };
    }