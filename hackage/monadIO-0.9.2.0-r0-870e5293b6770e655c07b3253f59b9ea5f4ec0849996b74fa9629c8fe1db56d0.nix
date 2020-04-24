{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.0";
      identifier = { name = "monadIO"; version = "0.9.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2010, Galois, Inc.";
      maintainer = "John Launchbury";
      author = "John Launchbury";
      homepage = "";
      url = "";
      synopsis = "Overloading of concurrency variables";
      description = "MonadIO provides for many IO operations to be\noverloaded over other IO-like monads.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }