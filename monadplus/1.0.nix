{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "monadplus";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Hans Hoglund <hans@hanshoglund.se>";
        author = "Hans Hoglund";
        homepage = "";
        url = "";
        synopsis = "To be written.";
        description = "Filtering and folding over arbitrary `MonadPlus` instances.\nThis package generalizes many common stream operations such as\n`filter`, `catMaybes` etc.";
        buildType = "Simple";
      };
      components = {
        monadplus = {
          depends  = [ hsPkgs.base ];
        };
      };
    }