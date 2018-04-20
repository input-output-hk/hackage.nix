{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "snap-accept";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "(c) 2013 Timothy Jones";
        maintainer = "Timothy Jones <git@zimothy.com>";
        author = "Timothy Jones";
        homepage = "http://github.com/zimothy/snap-accept";
        url = "";
        synopsis = "Accept header branching for the Snap web framework";
        description = "HTTP media type functionality as a complement to Snap's 'method' and 'methods'\nfunctions.  Branches based on the value of the Accept header of the current\nrequest, automatically setting the Content-Type header of the response.";
        buildType = "Simple";
      };
      components = {
        snap-accept = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-media
            hsPkgs.snap-core
          ];
        };
      };
    }