{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hstyle"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Doug Beardsley <mightybyte@mightybyte.net>\nJasper Van der Jeugt <m@jaspervdj.be>";
      author = "Doug Beardsley <mightybyte@mightybyte.net>\nJasper Van der Jeugt <m@jaspervdj.be>";
      homepage = "";
      url = "";
      synopsis = "Checks Haskell source code for style compliance.";
      description = "Originally intended to automate style checking for the Snap\nproject.  But the project should be general enough to work\nwith other style guides.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hstyle" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.text)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }