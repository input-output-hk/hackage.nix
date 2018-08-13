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
        name = "heredocs";
        version = "0.1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cutsea110@gmail.com";
      author = "cutsea110";
      homepage = "http://github.com/cutsea110/heredoc.git";
      url = "";
      synopsis = "heredocument";
      description = "heredocument";
      buildType = "Simple";
    };
    components = {
      "heredocs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.doctest)
          (hsPkgs.parsec)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
        ];
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.heredocs)
            (hsPkgs.text)
          ];
        };
      };
    };
  }