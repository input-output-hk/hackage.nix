{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "control-dsl"; version = "0.2.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 Yang Bo";
      maintainer = "pop.atry@gmail.com";
      author = "Yang Bo";
      homepage = "https://github.com/Atry/Control.Dsl#readme";
      url = "";
      synopsis = "An alternative to monads";
      description = "This \\\"control-dsl\\\" package is a toolkit to create extensible Domain Specific Languages in @do@-notation.\n\nSee \"Control.Dsl\" for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) ]; };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.control-dsl)
            (hsPkgs.doctest)
            (hsPkgs.doctest-discover)
            (hsPkgs.temporary)
            ];
          };
        };
      };
    }