{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "exception-mtl"; version = "0.3.0.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2011 Harvard University\n(c) 2011-2014 Geoffrey Mainland";
      maintainer = "Geoffrey Mainland <mainland@cs.drexel.edu>";
      author = "Geoffrey Mainland <mainland@cs.drexel.edu>";
      homepage = "http://www.cs.drexel.edu/~mainland/";
      url = "";
      synopsis = "Exception monad transformer instances for mtl2 classes.";
      description = "This package provides exception monad transformer instances for\nthe classes defined by mtl.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."exception-transformers" or ((hsPkgs.pkgs-errors).buildDepError "exception-transformers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }