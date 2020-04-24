{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "hpc-tracer"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2006 Andy Gill, Colin Runciman, (c) 2006-2007 Galois Inc.";
      maintainer = "Andy Gill <andygill@ku.edu>";
      author = "Andy Gill <andygill@ku.edu>";
      homepage = "http://darcs.unsafePerformIO.com/hpc-tracer";
      url = "";
      synopsis = "Tracer with AJAX interface";
      description = "An incomplete component of the Hpc toolkit which provides the\nability to step through coverage ticks as they happen, giving a\npoor mans debugger.  Requires the binary being traced to be build\nusing a specific version of ghc-6.7, so YMWV.\nThe plan is to port this to the new GHC API, giving both tracing\nand free variable examination via an Ajax interface.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hpc-tracer" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hpc" or ((hsPkgs.pkgs-errors).buildDepError "hpc"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            ];
          buildable = true;
          };
        };
      };
    }