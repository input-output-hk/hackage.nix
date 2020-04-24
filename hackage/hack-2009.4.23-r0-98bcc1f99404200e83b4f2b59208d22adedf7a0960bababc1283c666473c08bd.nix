{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hack"; version = "2009.4.23"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing";
      homepage = "http://github.com/nfjinjing/hack/tree/master";
      url = "";
      synopsis = "a sexy Haskell Webserver Interface";
      description = "Hack: a sexy Haskell Webserver Interface\n========================================\nHack is a brain-dead port of the brilliant Ruby Rack <http://rack.rubyforge.org/> webserver interface.\nWhat does a Hack app look like\nmodule Main where\nimport Hack\nimport Hack.Handler.Kibro\nhello :: Application\nhello = \\env -> return \$ Response\n{ status  = 200\n, headers = [ (\"Content-Type\", \"text/plain\") ]\n, body    = \"Hello World\"\n}\nmain = run hello";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."cgi" or ((hsPkgs.pkgs-errors).buildDepError "cgi"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mps" or ((hsPkgs.pkgs-errors).buildDepError "mps"))
          (hsPkgs."kibro" or ((hsPkgs.pkgs-errors).buildDepError "kibro"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."template" or ((hsPkgs.pkgs-errors).buildDepError "template"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          ];
        buildable = true;
        };
      };
    }