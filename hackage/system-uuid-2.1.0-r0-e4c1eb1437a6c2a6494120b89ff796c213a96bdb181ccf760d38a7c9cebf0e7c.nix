{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { split-base = true; cli = false; };
    package = {
      specVersion = "1.8.0.6";
      identifier = { name = "system-uuid"; version = "2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "oss@solidsnack.be";
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
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."murmur-hash" or ((hsPkgs.pkgs-errors).buildDepError "murmur-hash"))
          ] ++ [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        libs = (pkgs.lib).optional (system.isLinux) (pkgs."uuid" or ((hsPkgs.pkgs-errors).sysDepError "uuid")) ++ (pkgs.lib).optional (system.isWindows) (pkgs."rpcrt4" or ((hsPkgs.pkgs-errors).sysDepError "rpcrt4"));
        buildable = true;
        };
      exes = {
        "hooty" = {
          depends = [
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."murmur-hash" or ((hsPkgs.pkgs-errors).buildDepError "murmur-hash"))
            ] ++ [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          libs = (pkgs.lib).optional (system.isLinux) (pkgs."uuid" or ((hsPkgs.pkgs-errors).sysDepError "uuid")) ++ (pkgs.lib).optional (system.isWindows) (pkgs."rpcrt4" or ((hsPkgs.pkgs-errors).sysDepError "rpcrt4"));
          buildable = if flags.cli then true else false;
          };
        };
      };
    }