{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Workflow"; version = "0.8.0.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto Gómez Corona";
      homepage = "";
      url = "";
      synopsis = "Workflow patterns over a monad for thread state logging & recovery";
      description = "Transparent support  for interruptible computations. A workflow can be seen as a persistent thread that executes a\nmonadic computation. Therefore, it can be used in very time consuming computations such are CPU intensive calculations\nor procedures that are most of the time waiting for the action of a process or an user, that are prone to comunication\nfailures, timeouts or shutdowns. It also can be used if you like to restart your\nprogram at the point where the user left it last time\n.             .\nThe computation can be restarted at the interrupted point thanks to its logged state in permanent storage.\nThe thread state is located in files by default. It can be moved and continued in another computer.\nBesides that, the package also provides other higher level services associated to workflows: Workflow patterns,\nand a general configuarion utility, workflow observation events and references to the internal state.\nThe state can be stored maintaining memory references (using the \"RefSerialize\" package), so that it is possible to track the modifications\nof a big structure (for example a document) along the workflow execution.\n\nSee \"Control.Workflow\" for details\n\nIn this release:\n* minor changes";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."MonadCatchIO-transformers" or ((hsPkgs.pkgs-errors).buildDepError "MonadCatchIO-transformers"))
          (hsPkgs."RefSerialize" or ((hsPkgs.pkgs-errors).buildDepError "RefSerialize"))
          (hsPkgs."TCache" or ((hsPkgs.pkgs-errors).buildDepError "TCache"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."extensible-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "extensible-exceptions"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }