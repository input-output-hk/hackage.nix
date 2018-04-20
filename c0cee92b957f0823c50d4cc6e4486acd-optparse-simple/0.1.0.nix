{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "optparse-simple";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2015-2017 FP Complete";
        maintainer = "chrisdone@fpcomplete.com";
        author = "FP Complete";
        homepage = "https://github.com/fpco/optparse-simple#readme";
        url = "";
        synopsis = "Simple interface to optparse-applicative";
        description = "Please see the README at <https://www.stackage.org/package/optparse-simple>";
        buildType = "Simple";
      };
      components = {
        optparse-simple = {
          depends  = [
            hsPkgs.base
            hsPkgs.gitrev
            hsPkgs.optparse-applicative
            hsPkgs.template-haskell
            hsPkgs.transformers
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.optparse-simple
            ];
          };
        };
      };
    }