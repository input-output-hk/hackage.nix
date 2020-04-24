{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "system-uuid"; version = "1.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "system-uuid@solidsnack.be";
      author = "Jason Dusek";
      homepage = "http://github.com/solidsnack/system-uuid/";
      url = "";
      synopsis = "Bindings to system UUID functions.";
      description = "Bindings to the native UUID generator for a number of platforms. Please\ncontact the author if your platform is not supported.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          ];
        libs = (pkgs.lib).optional (system.isLinux) (pkgs."uuid" or ((hsPkgs.pkgs-errors).sysDepError "uuid")) ++ (pkgs.lib).optional (system.isWindows) (pkgs."rpcrt4" or ((hsPkgs.pkgs-errors).sysDepError "rpcrt4"));
        buildable = true;
        };
      exes = {
        "hooty" = {
          libs = (pkgs.lib).optional (system.isLinux) (pkgs."uuid" or ((hsPkgs.pkgs-errors).sysDepError "uuid")) ++ (pkgs.lib).optional (system.isWindows) (pkgs."rpcrt4" or ((hsPkgs.pkgs-errors).sysDepError "rpcrt4"));
          buildable = true;
          };
        };
      };
    }