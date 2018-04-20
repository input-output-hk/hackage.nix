{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "conduit-combinators";
          version = "1.3.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/snoyberg/mono-traversable#readme";
        url = "";
        synopsis = "DEPRECATED Functionality merged into the conduit package itself";
        description = "See docs and README at <http://www.stackage.org/package/conduit-combinators>";
        buildType = "Simple";
      };
      components = {
        conduit-combinators = {
          depends  = [ hsPkgs.base ];
        };
      };
    }