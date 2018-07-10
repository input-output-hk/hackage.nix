{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pipes-group";
          version = "1.0.12";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Gabriel Gonzalez";
        maintainer = "Gabriel439@gmail.com";
        author = "Gabriel Gonzalez";
        homepage = "";
        url = "";
        synopsis = "Group streams into substreams";
        description = "@pipes-group@ uses @FreeT@ and lenses to group streams into\nsub-streams.  Notable features include:\n\n* /Perfect Streaming/: Group elements without collecting them into memory\n\n* /Lens Support/: Use lenses to simplify many common operations\n\n@Pipes.Group@ contains the full documentation for this library.\n\nRead @Pipes.Group.Tutorial@ for an extensive tutorial.";
        buildType = "Simple";
      };
      components = {
        pipes-group = {
          depends  = [
            hsPkgs.base
            hsPkgs.free
            hsPkgs.pipes
            hsPkgs.pipes-parse
            hsPkgs.transformers
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.lens-family-core
              hsPkgs.doctest
            ];
          };
        };
      };
    }