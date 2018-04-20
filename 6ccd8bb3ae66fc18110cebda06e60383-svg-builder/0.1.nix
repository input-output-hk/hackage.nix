{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "svg-builder";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Jeffrey Rosenbluth";
        maintainer = "jeffrey.rosenbluth@gmail.com";
        author = "Jeffrey Rosenbluth";
        homepage = "http://github.com/jeffreyrosenbluth/svg-builder.git";
        url = "";
        synopsis = "DSL for building SVG.";
        description = "Fast, easy to write SVG.";
        buildType = "Simple";
      };
      components = {
        svg-builder = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.hashable
            hsPkgs.text
            hsPkgs.unordered-containers
          ];
        };
      };
    }