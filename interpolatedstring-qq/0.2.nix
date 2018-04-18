{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "interpolatedstring-qq";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Erik Charlebois";
        maintainer = "Erik Charlebois <erikcharlebois@gmail.com>";
        author = "Erik Charlebois";
        homepage = "";
        url = "";
        synopsis = "QuasiQuoter for Ruby-style multi-line interpolated strings.";
        description = "QuasiQuoter for Ruby-style multi-line interpolated strings.";
        buildType = "Custom";
      };
      components = {
        interpolatedstring-qq = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.haskell-src-meta-mwotton
          ];
        };
      };
    }