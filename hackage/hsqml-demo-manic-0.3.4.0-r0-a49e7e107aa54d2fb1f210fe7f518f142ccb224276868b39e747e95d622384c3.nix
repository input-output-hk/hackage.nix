{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hsqml-demo-manic"; version = "0.3.4.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014-2016 Robin KAY";
      maintainer = "komadori@gekkou.co.uk";
      author = "Robin KAY";
      homepage = "http://www.gekkou.co.uk/software/hsqml/";
      url = "";
      synopsis = "HsQML-based clone of Pipe Mania";
      description = "HsQML-based clone of Pipe Mania";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hsqml-manic" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
            (hsPkgs."hsqml" or ((hsPkgs.pkgs-errors).buildDepError "hsqml"))
            ];
          buildable = true;
          };
        };
      };
    }