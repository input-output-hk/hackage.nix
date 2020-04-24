{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      splitbase = true;
      buildexamples = false;
      buildprofilers = false;
      buildtests = false;
      };
    package = {
      specVersion = "1.2";
      identifier = { name = "synthesizer"; version = "0.0.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
      url = "http://darcs.haskell.org/synthesizer/";
      synopsis = "Audio signal processing coded in Haskell";
      description = "Audio signal processing\nfeaturing both low-level functions\nand high-level functions which use physical units,\nabstract from the sample rate and are really fast\ndue to StorableVector, Stream-like list type and aggressive inlining.\nFor an interface to Haskore see <http://darcs.haskell.org/haskore-synthesizer/>.\nFor an introduction see @doc/Prologue.txt@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."event-list" or ((hsPkgs.pkgs-errors).buildDepError "event-list"))
          (hsPkgs."non-negative" or ((hsPkgs.pkgs-errors).buildDepError "non-negative"))
          (hsPkgs."numeric-prelude" or ((hsPkgs.pkgs-errors).buildDepError "numeric-prelude"))
          (hsPkgs."numeric-quest" or ((hsPkgs.pkgs-errors).buildDepError "numeric-quest"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."storablevector" or ((hsPkgs.pkgs-errors).buildDepError "storablevector"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."special-functors" or ((hsPkgs.pkgs-errors).buildDepError "special-functors"))
            ]);
        buildable = true;
        };
      exes = {
        "demonstration" = {
          buildable = if !flags.buildexamples then false else true;
          };
        "traumzauberbaum" = {
          buildable = if !flags.buildexamples then false else true;
          };
        "test" = { buildable = if !flags.buildtests then false else true; };
        "fusiontest" = {
          buildable = if !flags.buildprofilers then false else true;
          };
        "speedtest" = {
          buildable = if !flags.buildprofilers then false else true;
          };
        "speedtest-exp" = {
          depends = (pkgs.lib).optionals (flags.splitbase) [
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = if !flags.buildprofilers then false else true;
          };
        "speedtest-simple" = {
          buildable = if !flags.buildprofilers then false else true;
          };
        };
      };
    }