{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {
      small_base = true;
      with_parsec = true;
      with_split = true;
      with_hint = true;
      with_mpd = true;
      with_hlist = false;
      with_regex_posix = true;
      with_template_haskell = true;
      testing = false;
      };
    package = {
      specVersion = "1.2.1";
      identifier = { name = "xmonad-extras"; version = "0.10.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniel@wagner-home.com, daniel.schoepe@googlemail.com";
      author = "The Daniels Schoepe and Wagner";
      homepage = "http://projects.haskell.org/xmonad-extras";
      url = "";
      synopsis = "Third party extensions for xmonad with wacky dependencies";
      description = "Various modules for xmonad that cannot be added to xmonad-contrib\nbecause of additional dependencies.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((((([
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
          (hsPkgs."xmonad" or (errorHandler.buildDepError "xmonad"))
          (hsPkgs."xmonad-contrib" or (errorHandler.buildDepError "xmonad-contrib"))
          ] ++ (if flags.small_base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ])) ++ (pkgs.lib).optionals (flags.with_parsec && flags.with_split) [
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          ]) ++ (pkgs.lib).optionals (flags.with_hint) [
          (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ]) ++ (pkgs.lib).optional (flags.with_mpd) (hsPkgs."libmpd" or (errorHandler.buildDepError "libmpd"))) ++ (pkgs.lib).optional (flags.with_regex_posix) (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))) ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "6.12.1" && flags.with_template_haskell && flags.with_hlist) [
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."HList" or (errorHandler.buildDepError "HList"))
          ];
        buildable = true;
        };
      };
    }