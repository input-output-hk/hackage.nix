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
      specVersion = "1.6";
      identifier = {
        name = "AC-Vector-Fancy";
        version = "2.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "MathematicalOrchid@hotmail.com";
      author = "Andrew Coppin";
      homepage = "";
      url = "";
      synopsis = "Fancy type system stuff for AC-Vector";
      description = "Adds various type system tricks to AC-Vector.\n(Requires several language extensions, including\ntype families.)\nNow includes @points_bounds@ method.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.AC-Angle)
          (hsPkgs.AC-Vector)
        ];
      };
    };
  }