{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "snap-auth-cli"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dima@dzhus.org";
      author = "Dmitry Dzhus";
      homepage = "https://github.com/dzhus/snap-auth-cli#readme";
      url = "";
      synopsis = "Command-line tool to manage Snap AuthManager database";
      description = "This utility provides command-line interface to user database of standard authentication system for the Snap web framework. You can create, read and update users, set passwords, roles and meta information. Currently only JsonFile backend is supported. Type `snap-auth-cli -?` to get usage information, or see README.md for details.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "snap-auth-cli" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or ((hsPkgs.pkgs-errors).buildDepError "aeson-pretty"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."clientsession" or ((hsPkgs.pkgs-errors).buildDepError "clientsession"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."snap" or ((hsPkgs.pkgs-errors).buildDepError "snap"))
            (hsPkgs."snaplet-sqlite-simple" or ((hsPkgs.pkgs-errors).buildDepError "snaplet-sqlite-simple"))
            (hsPkgs."sqlite-simple" or ((hsPkgs.pkgs-errors).buildDepError "sqlite-simple"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        };
      };
    }