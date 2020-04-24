{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "stm-split"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "";
      url = "";
      synopsis = "TMVars, TVars and TChans with distinguished input and output side";
      description = "Transactional MVars, Vars and Channels with distinguished input and output side.\nWhen threads communicate via a TMVar, a TVar or a TChan\nthere are often clearly defined roles,\nwhich thread is the sender and which one is receiver.\nWe provide wrappers around the standard concurrency communication channels\nthat make the distinction clear and type safe.\n\nFor example, if a function has a parameter of type @TChan.In@\nthen it is sure that it will only write to that channel.\nAdditionally if the compiler warns about an unused @TChan.Out@\nthat was created by @TChan.new@\nthen you know that the receiver part of your communication is missing.\n\nSee also package @concurrent-split@ for non-transactional communication.\nThis package follows the same idea as @chan-split@ but is strictly Haskell 98.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }