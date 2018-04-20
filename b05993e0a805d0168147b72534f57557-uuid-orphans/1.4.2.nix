{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "uuid-orphans";
          version = "1.4.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) David Fox";
        maintainer = "David Fox <dsf@seereason.com>";
        author = "David Fox";
        homepage = "";
        url = "";
        synopsis = "Orphan instances for the UUID datatype";
        description = "Orphan instances for the UUID datatype.  Currently , instances\nfor SafeCopy and PathInfo are provided.  The package version number\nis inherited from the current version of uuid.";
        buildType = "Simple";
      };
      components = {
        uuid-orphans = {
          depends  = [
            hsPkgs.base
            hsPkgs.uuid-types
            hsPkgs.safecopy
            hsPkgs.text
            hsPkgs.th-lift
            hsPkgs.web-routes
          ];
        };
      };
    }