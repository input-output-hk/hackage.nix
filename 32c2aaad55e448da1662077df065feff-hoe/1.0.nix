{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hoe";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010-2015, Hideyuki Tanaka";
        maintainer = "tanaka.hideyuki@gmail.com";
        author = "Hideyuki Tanaka";
        homepage = "http://github.com/tanakh/hoe";
        url = "";
        synopsis = "hoe: Haskell One-liner Evaluator";
        description = "@hoe@ is AWK like text processor.\nThis can evaluate scripts in various ways depending on types.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hoe = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.exceptions
              hsPkgs.hint
              hsPkgs.mtl
              hsPkgs.regex-posix
              hsPkgs.split
              hsPkgs.time
            ];
          };
        };
      };
    }