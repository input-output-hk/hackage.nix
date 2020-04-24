{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ihaskell-widgets"; version = "0.2.3.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Sumit Sahrawat <sumit.sahrawat.apm13@iitbhu.ac.in>,\nAndrew Gibiansky <andrew.gibiansky@gmail.com>";
      author = "Sumit Sahrawat";
      homepage = "http://www.github.com/gibiansky/IHaskell";
      url = "";
      synopsis = "IPython standard widgets for IHaskell.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."ipython-kernel" or ((hsPkgs.pkgs-errors).buildDepError "ipython-kernel"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vinyl" or ((hsPkgs.pkgs-errors).buildDepError "vinyl"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."ihaskell" or ((hsPkgs.pkgs-errors).buildDepError "ihaskell"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.10.2") (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))) ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).eq "7.10.1") [
          (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
          (hsPkgs."nats" or ((hsPkgs.pkgs-errors).buildDepError "nats"))
          ]) ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).lt "7.10.1") [
          (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
          (hsPkgs."nats" or ((hsPkgs.pkgs-errors).buildDepError "nats"))
          ];
        buildable = true;
        };
      };
    }