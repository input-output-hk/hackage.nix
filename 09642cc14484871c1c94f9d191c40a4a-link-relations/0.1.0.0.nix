{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "link-relations";
          version = "0.1.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
        maintainer = "fr33domlover@riseup.net";
        author = "fr33domlover";
        homepage = "http://hub.darcs.net/fr33domlover/link-relations";
        url = "";
        synopsis = "Use web link relation types (RFC 5988) in Haskell";
        description = "This library provides access to the IANA registry of link relation types, for\nuse in Haskell code in a type-safe manner.\n\nThe registry data can be found at\n<https://www.iana.org/assignments/link-relations>. This package is generated\nfrom that data.\n\nTo see to which revision of the registry this version of the package\ncorresponds, look at the intro comment in \"Web.LinkRelations\".";
        buildType = "Simple";
      };
      components = {
        "link-relations" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.hashable
            hsPkgs.unordered-containers
            hsPkgs.uri-bytestring
          ];
        };
      };
    }