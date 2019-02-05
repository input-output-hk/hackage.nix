{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { with-conduit = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "sandi"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Magnus Therning <magnus@therning.org>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Data encoding library";
      description = "Reasonably fast data encoding library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          ] ++ (pkgs.lib).optionals (flags.with-conduit) [
          (hsPkgs.conduit)
          (hsPkgs.exceptions)
          ];
        };
      tests = {
        "sandi-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.sandi)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            ];
          };
        };
      benchmarks = {
        "sandi-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.sandi)
            ];
          };
        };
      };
    }