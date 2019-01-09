{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hlibgit2"; version = "0.3.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "johnw@newartisans.com";
      author = "Sakari Jokinen, Jacob Stanley, John Wiegley";
      homepage = "";
      url = "";
      synopsis = "Low-level bindings to libgit2.";
      description = "Bindings to libgit2 v0.16.0-471-g5b9fac3";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bindings-DSL) ];
        libs = [ (pkgs."git2") ];
        };
      tests = {
        "smoke" = {
          depends = [ (hsPkgs.base) (hsPkgs.hlibgit2) (hsPkgs.process) ];
          };
        };
      };
    }