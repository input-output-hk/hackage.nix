{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "simple-config";
        version = "1.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yunomu@gmail.com";
      author = "Yusuke Nomura";
      homepage = "https://github.com/yunomu/simple-config";
      url = "";
      synopsis = "Simple config file parser generator";
      description = "Simple config file parser generator";
      buildType = "Simple";
    };
    components = {
      "simple-config" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.parsec)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.data-default)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }