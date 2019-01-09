{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "weeder"; version = "0.1.5"; };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2017";
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
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.yaml)
            (hsPkgs.vector)
            (hsPkgs.hashable)
            (hsPkgs.filepath)
            (hsPkgs.cmdargs)
            (hsPkgs.aeson)
            (hsPkgs.yaml)
            (hsPkgs.bytestring)
            (hsPkgs.process)
            (hsPkgs.extra)
            ];
          };
        };
      };
    }