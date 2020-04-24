{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "eprocess"; version = "1.5.0"; };
      license = "BSD-3-Clause";
      copyright = "2009 Fernando \"Brujo\" Benavides";
      maintainer = "greenmellon@gmail.com";
      author = "Fernando \"Brujo\" Benavides";
      homepage = "";
      url = "http://code.haskell.org/eprocess";
      synopsis = "*Very* basic Erlang-like process support for Haskell";
      description = "This library provides a *very* basic support for processes with message queues.  It was built using channels, threads and MVars. Since version 1.1.0 you can also kill a running process.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."MonadCatchIO-mtl" or ((hsPkgs.pkgs-errors).buildDepError "MonadCatchIO-mtl"))
          (hsPkgs."MonadCatchIO-mtl" or ((hsPkgs.pkgs-errors).buildDepError "MonadCatchIO-mtl"))
          ];
        buildable = true;
        };
      };
    }