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
        name = "human-parse";
        version = "0.1.0.2";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin <ch.martin@gmail.com>";
      author = "Chris Martin <ch.martin@gmail.com>";
      homepage = "https://github.com/chris-martin/human";
      url = "";
      synopsis = "A lawless typeclass for parsing text entered by humans.";
      description = "An unprincipled best-effort informal attempt to figure out what a human is saying.";
      buildType = "Simple";
    };
    components = {
      "human-parse" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
        ];
      };
    };
  }