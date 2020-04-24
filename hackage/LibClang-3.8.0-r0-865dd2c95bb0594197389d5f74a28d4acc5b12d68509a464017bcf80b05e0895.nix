{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "LibClang"; version = "3.8.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chetan Taralekar <chetant@gmail.com>, Seth Fowler <mark.seth.fowler@gmail.com>";
      author = "Chetan Taralekar <chetant@gmail.com>";
      homepage = "https://github.com/chetant/LibClang";
      url = "";
      synopsis = "Haskell bindings for libclang (a C++ parsing library)";
      description = "LibClang package provides bindings to libclang.\n\nThis should be enough for parsing C/C++ code, walking the AST and querying nodes and completion queries.\n\n* NOTE: This version is set to build against llvm 3.8.0\n\nPlease use <https://github.com/chetant/LibClang/issues> to report bugs";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        libs = [
          (pkgs."clang-3.8" or ((hsPkgs.pkgs-errors).sysDepError "clang-3.8"))
          ];
        pkgconfig = [
          (pkgconfPkgs."ncurses" or ((hsPkgs.pkgs-errors).pkgConfDepError "ncurses"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }