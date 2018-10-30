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
        name = "afv";
        version = "0.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tom Hawkins <tomahawkins@gmail.com>";
      author = "Tom Hawkins <tomahawkins@gmail.com>";
      homepage = "http://tomahawkins.org";
      url = "";
      synopsis = "Infinite state model checking of iterative C programs.";
      description = "AFV is an infinite state model checker that\nverifies iterative C programs by k-induction.\nAFV uses Yices as the backend SMT solver.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "afv" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.language-c)
            (hsPkgs.yices)
          ];
        };
      };
    };
  }