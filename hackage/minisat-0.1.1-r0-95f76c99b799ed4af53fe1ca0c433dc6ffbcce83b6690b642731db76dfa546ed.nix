{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "minisat"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A Haskell bundle of the Minisat SAT solver";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"));
        libs = [
          (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (pkgs."z" or ((hsPkgs.pkgs-errors).sysDepError "z"));
        buildable = true;
        };
      };
    }