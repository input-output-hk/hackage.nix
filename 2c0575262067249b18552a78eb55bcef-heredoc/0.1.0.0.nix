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
      specVersion = "1.8";
      identifier = {
        name = "heredoc";
        version = "0.1.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "jameshfisher@gmail.com";
      author = "James H. Fisher";
      homepage = "";
      url = "";
      synopsis = "multi-line string / here document using QuasiQuotes";
      description = "";
      buildType = "Simple";
    };
    components = {
      "heredoc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }