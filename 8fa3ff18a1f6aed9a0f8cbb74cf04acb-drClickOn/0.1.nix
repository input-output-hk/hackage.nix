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
      specVersion = "1.2";
      identifier = {
        name = "drClickOn";
        version = "0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "ploeg@cwi.nl";
      author = "Atze van der Ploeg";
      homepage = "https://github.com/cwi-swat/monadic-frp";
      url = "";
      synopsis = "Monadic FRP";
      description = "FRP style where sequential composition (switching) is more primitive than in other approaches.";
      buildType = "Simple";
    };
    components = {
      "drClickOn" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }