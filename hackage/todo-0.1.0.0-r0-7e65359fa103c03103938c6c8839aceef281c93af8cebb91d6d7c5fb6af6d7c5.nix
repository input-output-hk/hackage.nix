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
        name = "todo";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonathan.skarstedt@gmail.com";
      author = "Jonathan Skårstedt";
      homepage = "";
      url = "";
      synopsis = "Gives warnings when you leave a bottom in your code";
      description = "By wrapping standard functions with warnings we may\nshow where we leave our bottoms and traces.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }