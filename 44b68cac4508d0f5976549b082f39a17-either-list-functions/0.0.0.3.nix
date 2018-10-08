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
        name = "either-list-functions";
        version = "0.0.0.3";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin <ch.martin@gmail.com>";
      author = "Chris Martin <ch.martin@gmail.com>";
      homepage = "https://github.com/chris-martin/either-list-functions";
      url = "";
      synopsis = "Functions involving lists of Either";
      description = "Functions involving lists of Either.";
      buildType = "Simple";
    };
    components = {
      "either-list-functions" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.either-list-functions)
          ];
        };
      };
    };
  }