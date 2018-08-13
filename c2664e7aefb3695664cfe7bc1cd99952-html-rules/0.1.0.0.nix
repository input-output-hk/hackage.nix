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
        name = "html-rules";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Kyle Carter 2014, All rights reserved";
      maintainer = "Kyle Carter <kcarter@galois.com>";
      author = "Kyle Carter";
      homepage = "";
      url = "";
      synopsis = "Perform traversals of HTML structures using sets of rules.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "html-rules" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.tagsoup)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
        ];
      };
    };
  }