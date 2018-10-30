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
      specVersion = "1.18";
      identifier = {
        name = "cruncher-types";
        version = "1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2014 - Ricky Elrod";
      maintainer = "ricky@elrod.me";
      author = "Ricky Elrod";
      homepage = "http://github.com/eval-so/cruncher-types";
      url = "";
      synopsis = "Request and Response types for Eval.so's API";
      description = "You are not likely to find this useful unless you are building a library for\naccessing Eval.so's new API, or working on the \"Cruncher\" backend.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.lens)
        ];
      };
      tests = {
        "hlint" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
      };
    };
  }