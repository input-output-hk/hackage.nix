{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "kif-parser"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jan Christiansen <j.christiansen@monoid-it.de>";
      author = "Jan Christiansen";
      homepage = "";
      url = "";
      synopsis = "Process KIF iOS test logs";
      description = "Converts KIF (Keep It Functional) iOS integration test logs into other formats, i.e., JUnit XML format";
      buildType = "Simple";
      };
    components = {
      exes = {
        "kif-parser" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.twine)
            (hsPkgs.bytestring)
            (hsPkgs.old-time)
            (hsPkgs.hostname)
            (hsPkgs.cmdargs)
            ];
          };
        };
      };
    }