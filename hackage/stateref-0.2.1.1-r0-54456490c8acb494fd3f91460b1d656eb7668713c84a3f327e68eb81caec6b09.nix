{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { usestm = true; usetmvar = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "stateref"; version = "0.2.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "http://darcs.deepbondi.net/stateref";
      url = "";
      synopsis = "Abstraction for things that work like IORef.";
      description = "A collection of type-classes generalizing the\nread\\/write\\/modify operations for stateful variables\nprovided by things like IORef, TVar, &c.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ] ++ (pkgs.lib).optional (flags.usestm) (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"));
        buildable = if flags.usestm
          then if flags.usetmvar
            then if compiler.isHugs && true then false else true
            else true
          else true;
        };
      };
    }