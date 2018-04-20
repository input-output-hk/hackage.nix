{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      executables = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pinchot";
          version = "0.22.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2015 - 2016 Omari Norman";
        maintainer = "omari@smileystation.com";
        author = "Omari Norman";
        homepage = "http://www.github.com/massysett/pinchot";
        url = "";
        synopsis = "Write grammars, not parsers";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        pinchot = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.template-haskell
            hsPkgs.Earley
            hsPkgs.pretty-show
            hsPkgs.lens
            hsPkgs.ListLike
            hsPkgs.semigroups
            hsPkgs.non-empty-sequence
          ];
        };
        exes = {
          newman = {
            depends  = pkgs.lib.optionals (!(!_flags.executables)) [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.transformers
              hsPkgs.template-haskell
              hsPkgs.Earley
              hsPkgs.pretty-show
              hsPkgs.lens
              hsPkgs.ListLike
              hsPkgs.semigroups
              hsPkgs.non-empty-sequence
            ];
          };
          newmanPretty = {
            depends  = pkgs.lib.optionals (!(!_flags.executables)) [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.transformers
              hsPkgs.template-haskell
              hsPkgs.Earley
              hsPkgs.pretty-show
              hsPkgs.lens
              hsPkgs.ListLike
              hsPkgs.semigroups
              hsPkgs.non-empty-sequence
            ];
          };
        };
      };
    }