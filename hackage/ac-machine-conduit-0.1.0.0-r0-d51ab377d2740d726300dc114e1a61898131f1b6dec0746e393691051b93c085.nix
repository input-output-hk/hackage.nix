{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ac-machine-conduit";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yuta Taniguchi <yuta.taniguchi.y.t@gmail.com>";
      author = "Yuta Taniguchi <yuta.taniguchi.y.t@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Drive Aho-Corasick machines in Conduit pipelines";
      description = "Drive Aho-Corasick machines in Conduit pipelines.";
      buildType = "Simple";
    };
    components = {
      "ac-machine-conduit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ac-machine)
          (hsPkgs.conduit)
          (hsPkgs.text)
        ];
      };
    };
  }