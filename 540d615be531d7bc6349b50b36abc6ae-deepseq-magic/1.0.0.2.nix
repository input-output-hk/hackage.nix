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
      specVersion = "1.10";
      identifier = {
        name = "deepseq-magic";
        version = "1.0.0.2";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "ezyang@cs.stanford.edu";
      author = "Edward Z. Yang";
      homepage = "https://github.com/ezyang/deepseq-magic";
      url = "";
      synopsis = "Deep evaluation of data structures without NFData";
      description = "Deep evaluation of data structures without NFData";
      buildType = "Simple";
    };
    components = {
      "deepseq-magic" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }