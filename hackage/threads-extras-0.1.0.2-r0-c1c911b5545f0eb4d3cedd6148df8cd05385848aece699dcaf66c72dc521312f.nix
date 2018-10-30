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
        name = "threads-extras";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2016 skedge.me";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "";
      url = "";
      synopsis = "Extends the threads package with a bounded thread group";
      description = "Extends the threads package with a bounded thread group with the same interface as the original thread group.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.threads)
          (hsPkgs.stm)
        ];
      };
      tests = {
        "threads-extras-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.threads-extras)
          ];
        };
      };
    };
  }