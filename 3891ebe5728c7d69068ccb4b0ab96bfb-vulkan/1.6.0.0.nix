{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "vulkan";
          version = "1.6.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Joe Hermaszewski";
        maintainer = "live.long.and.prosper@monoid.al";
        author = "Joe Hermaszewski";
        homepage = "http://github.com/expipiplus1/vulkan#readme";
        url = "";
        synopsis = "Bindings to the Vulkan graphics API.";
        description = "Please see readme.md";
        buildType = "Simple";
      };
      components = {
        vulkan = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector-sized
          ];
        };
      };
    }