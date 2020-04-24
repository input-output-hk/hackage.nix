{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "uniplate"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2006-7, Neil Mitchell";
      maintainer = "ndmitchell@gmail.com";
      author = "Neil Mitchell";
      homepage = "http://www-users.cs.york.ac.uk/~ndm/uniplate/";
      url = "";
      synopsis = "Uniform type generic traversals.";
      description = "Uniplate is a boilerplate removal library, with similar goals to the\noriginal Scrap Your Boilerplate work. It requires few extensions to\nHaskell.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = if flags.splitbase
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
        buildable = true;
        };
      };
    }