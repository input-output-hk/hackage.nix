{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "inline-java"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2015-2016 EURL Tweag.";
      maintainer = "alp.mestanogullari@tweag.io";
      author = "Tweag I/O";
      homepage = "http://github.com/tweag/inline-java#readme";
      url = "";
      synopsis = "Java interop via inline Java code in Haskell modules.";
      description = "Please see README.md.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."distributed-closure" or ((hsPkgs.pkgs-errors).buildDepError "distributed-closure"))
          (hsPkgs."inline-c" or ((hsPkgs.pkgs-errors).buildDepError "inline-c"))
          (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."thread-local-storage" or ((hsPkgs.pkgs-errors).buildDepError "thread-local-storage"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        libs = [ (pkgs."jvm" or ((hsPkgs.pkgs-errors).sysDepError "jvm")) ];
        buildable = true;
        };
      };
    }