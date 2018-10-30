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
        name = "if";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Winterland 2016";
      maintainer = "winterland1989@gmail.com";
      author = "winterland1989";
      homepage = "https://github.com/winterland1989/if";
      url = "";
      synopsis = "(?) and (?>) conditional operator";
      description = "(?) and (?>) conditional operator, it can be used with any existed version of base.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }