{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "weeder";
          version = "1.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "Neil Mitchell 2017-2018";
        maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
        author = "Neil Mitchell <ndmitchell@gmail.com>";
        homepage = "https://github.com/ndmitchell/weeder#readme";
        url = "";
        synopsis = "Detect dead code";
        description = "Find redundant package dependencies or redundant module exports.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "weeder" = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.yaml
              hsPkgs.vector
              hsPkgs.hashable
              hsPkgs.directory
              hsPkgs.deepseq
              hsPkgs.filepath
              hsPkgs.cmdargs
              hsPkgs.yaml
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.foundation
              hsPkgs.process
              hsPkgs.extra
            ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") hsPkgs.semigroups;
          };
        };
      };
    }