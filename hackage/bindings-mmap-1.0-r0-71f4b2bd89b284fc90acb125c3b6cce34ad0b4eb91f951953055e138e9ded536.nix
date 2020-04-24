{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "bindings-mmap"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Claude Heiland-Allen";
      homepage = "";
      url = "";
      synopsis = "(deprecated) see bindings-posix instead";
      description = "Deprecated.  Use bindings-posix >= 1.2.3 Bindings.Posix.Sys.Mman instead.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."bindings-posix" or ((hsPkgs.pkgs-errors).buildDepError "bindings-posix"))
          ];
        buildable = true;
        };
      };
    }