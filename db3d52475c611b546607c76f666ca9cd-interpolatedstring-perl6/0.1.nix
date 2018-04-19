{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "interpolatedstring-perl6";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Audrey Tang";
        maintainer = "Audrey Tang <audreyt@audreyt.org>";
        author = "Audrey Tang";
        homepage = "";
        url = "";
        synopsis = "QuasiQuoter for Perl6-style multi-line interpolated strings.";
        description = "QuasiQuoter for Perl6-style multi-line interpolated strings.";
        buildType = "Custom";
      };
      components = {
        interpolatedstring-perl6 = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.haskell-src-meta
          ];
        };
      };
    }