{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "bricks-internal";
        version = "0.0.0.4";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin <ch.martin@gmail.com>";
      author = "Chris Martin <ch.martin@gmail.com>";
      homepage = "https://github.com/chris-martin/bricks#readme";
      url = "";
      synopsis = "...";
      description = "...";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.either-list-functions)
          (hsPkgs.text)
        ];
      };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.doctest)
            (hsPkgs.either-list-functions)
            (hsPkgs.text)
          ];
        };
      };
    };
  }