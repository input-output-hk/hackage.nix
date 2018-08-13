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
        name = "marked-pretty";
        version = "1.1.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andy Gill <andygill@ku.edu>";
      author = "Andy Gill";
      homepage = "https://github.com/ku-fpg/marked-pretty";
      url = "";
      synopsis = "Pretty-printing library, with scoping, based on pretty.";
      description = "This package contains a pretty-printing library, with scoping.";
      buildType = "Simple";
    };
    components = {
      "marked-pretty" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.ghc-prim)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.marked-pretty)
          ];
        };
      };
    };
  }