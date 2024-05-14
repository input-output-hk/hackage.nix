{
  "2.0" = {
    sha256 = "0ba85e9927e070792d18663e122c8a32086455c35ea91acfda85da9e595ca205";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-keyspaces-2.0-r0-16dcf27ccc771cbd930008ea0d7e587c110f7f11f3ee1ffd690793ee0a39862e.nix;
        revNum = 0;
        sha256 = "16dcf27ccc771cbd930008ea0d7e587c110f7f11f3ee1ffd690793ee0a39862e";
      };
      r1 = {
        nix = import ../hackage/amazonka-keyspaces-2.0-r1-e4ffb8b49f76643f4c897be51a4015cc3443a3bad1725723cc38fa3823574f3c.nix;
        revNum = 1;
        sha256 = "e4ffb8b49f76643f4c897be51a4015cc3443a3bad1725723cc38fa3823574f3c";
      };
      default = "r1";
    };
  };
}