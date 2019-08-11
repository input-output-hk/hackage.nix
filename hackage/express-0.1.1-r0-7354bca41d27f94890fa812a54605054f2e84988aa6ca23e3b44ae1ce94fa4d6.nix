{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "express"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Rudy Matela <rudy@matela.com.br>";
      author = "Rudy Matela <rudy@matela.com.br>";
      homepage = "https://github.com/rudymatela/express#readme";
      url = "";
      synopsis = "Dynamically-typed expressions involving applications and variables.";
      description = "Express is a library for manipulating dynamically typed Haskell expressions.\nIt's like @ Data.Dynamic @ but with support for encoding applications and\nvariables.\n\nIt provides the @ Expr @ type and over a hundred functions for\nbuilding, evaluating, comparing, folding, canonicalizing and matching\n@ Expr @s.  See the README and Haddock documentation for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.template-haskell) ]; };
      tests = {
        "main" = {
          depends = [ (hsPkgs.base) (hsPkgs.express) (hsPkgs.leancheck) ];
          };
        "core" = {
          depends = [ (hsPkgs.base) (hsPkgs.express) (hsPkgs.leancheck) ];
          };
        "canon" = {
          depends = [ (hsPkgs.base) (hsPkgs.express) (hsPkgs.leancheck) ];
          };
        "hole" = {
          depends = [ (hsPkgs.base) (hsPkgs.express) (hsPkgs.leancheck) ];
          };
        "match" = {
          depends = [ (hsPkgs.base) (hsPkgs.express) (hsPkgs.leancheck) ];
          };
        "map" = {
          depends = [ (hsPkgs.base) (hsPkgs.express) (hsPkgs.leancheck) ];
          };
        "fixtures" = {
          depends = [ (hsPkgs.base) (hsPkgs.express) (hsPkgs.leancheck) ];
          };
        "instances" = {
          depends = [ (hsPkgs.base) (hsPkgs.express) (hsPkgs.leancheck) ];
          };
        "express-instances" = {
          depends = [ (hsPkgs.base) (hsPkgs.express) (hsPkgs.leancheck) ];
          };
        "express-derive" = {
          depends = [ (hsPkgs.base) (hsPkgs.express) (hsPkgs.leancheck) ];
          };
        "ord" = {
          depends = [ (hsPkgs.base) (hsPkgs.express) (hsPkgs.leancheck) ];
          };
        "listable" = {
          depends = [ (hsPkgs.base) (hsPkgs.express) (hsPkgs.leancheck) ];
          };
        "name" = {
          depends = [ (hsPkgs.base) (hsPkgs.express) (hsPkgs.leancheck) ];
          };
        "name-derive" = {
          depends = [ (hsPkgs.base) (hsPkgs.express) (hsPkgs.leancheck) ];
          };
        "fold" = {
          depends = [ (hsPkgs.base) (hsPkgs.express) (hsPkgs.leancheck) ];
          };
        "show" = {
          depends = [ (hsPkgs.base) (hsPkgs.express) (hsPkgs.leancheck) ];
          };
        "utils" = {
          depends = [ (hsPkgs.base) (hsPkgs.express) (hsPkgs.leancheck) ];
          };
        };
      benchmarks = {
        "compare" = {
          depends = [ (hsPkgs.base) (hsPkgs.express) (hsPkgs.leancheck) ];
          };
        "pairs" = {
          depends = [ (hsPkgs.base) (hsPkgs.express) (hsPkgs.leancheck) ];
          };
        "tiers" = {
          depends = [ (hsPkgs.base) (hsPkgs.express) (hsPkgs.leancheck) ];
          };
        "u-extrapolate" = {
          depends = [ (hsPkgs.base) (hsPkgs.express) (hsPkgs.leancheck) ];
          };
        "u-speculate" = {
          depends = [ (hsPkgs.base) (hsPkgs.express) (hsPkgs.leancheck) ];
          };
        };
      };
    }