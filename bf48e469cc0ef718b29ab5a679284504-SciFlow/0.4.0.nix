{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      debug = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "SciFlow";
        version = "0.4.0";
      };
      license = "MIT";
      copyright = "(c) 2015 Kai Zhang";
      maintainer = "kai@kzhang.org";
      author = "Kai Zhang";
      homepage = "";
      url = "";
      synopsis = "Scientific workflow management system";
      description = "SciFlow is to help programmers design complex workflows\nwith ease.";
      buildType = "Simple";
    };
    components = {
      "SciFlow" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.data-default-class)
          (hsPkgs.fgl)
          (hsPkgs.graphviz)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.shelly)
          (hsPkgs.split)
          (hsPkgs.th-lift)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.containers)
          (hsPkgs.yaml)
        ];
      };
    };
  }