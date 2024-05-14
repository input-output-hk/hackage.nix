{
  "2.0" = {
    sha256 = "fa682fd4f178e0caa796a36c8b1916742cc31ee88f5c15cf6fabe9b8168533ec";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-chime-sdk-meetings-2.0-r0-f8ce5cd0ca053428de915e3a542aebeb218217da0aebc0c3dcdd26828c90d8ed.nix;
        revNum = 0;
        sha256 = "f8ce5cd0ca053428de915e3a542aebeb218217da0aebc0c3dcdd26828c90d8ed";
      };
      r1 = {
        nix = import ../hackage/amazonka-chime-sdk-meetings-2.0-r1-e566d63e139a435b9273a142fcb004bb4223a61103b205a0c4d6e3ccab46e989.nix;
        revNum = 1;
        sha256 = "e566d63e139a435b9273a142fcb004bb4223a61103b205a0c4d6e3ccab46e989";
      };
      default = "r1";
    };
  };
}