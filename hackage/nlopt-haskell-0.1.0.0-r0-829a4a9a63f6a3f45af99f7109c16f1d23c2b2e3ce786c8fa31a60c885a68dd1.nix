{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      link-nlopt-cxx = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "nlopt-haskell";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Matthew Peddie";
      maintainer = "Matthew Peddie <mpeddie@gmail.com>";
      author = "Matthew Peddie <mpeddie@gmail.com>";
      homepage = "https://github.com/peddie/nlopt-haskell";
      url = "";
      synopsis = "Low-level bindings to the NLOPT optimization library";
      description = "This library provides low-level bindings to\n<http://ab-initio.mit.edu/wiki/index.php/NLopt the NLOPT optimization library>.\nYou will need the NLOPT library and development headers installed.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
        ];
        libs = if flags.link-nlopt-cxx
          then [ (pkgs."nlopt_cxx") ]
          else [ (pkgs."nlopt") ];
      };
      tests = {
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.nlopt-haskell)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }